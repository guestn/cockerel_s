/**
 * Project Setup
 *
 * Setting up variables for project name and directories
*/

// Project configuration
var project			= 'Cockerel_s', // Project name, used for build zip.
	url				= 'http://localhost/cockerel_s', // Local Development URL for BrowserSync. Change as-needed.
	build			= './build/', // Files that you want to package into a zip go here
	themeDir		= '/wp-content/themes/cockerel_s/',
	liveDir			= 'xxx.roostertest3.com',

	vendors			= './node_modules/',
	source			= './wp-content/themes/cockerel_s/', 	// Your main project assets and naming 'source' instead of 'src' to avoid confusion with gulp.src
	bower			= './assets/bower_components/', // Not truly using this yet, more or less playing right now. TO-DO Place in Dev branch
	themeBuild		= [ '**/*.php' , 'page-templates/**/*.php' , './style.css','./gulpfile.js', './.bowerrc', './.gitignore', 'composer.phar', './*.json', './*.md', './screenshot.png', '!library/**/*', '!wpcs/**/*','!node_modules/**/*', '!vendor/**/*', '!assets/bower_components/**/*', '!**/*-min.css', '!assets/js/vendor/*', '!assets/css/*', '!**/*-min.js', '!assets/js/production.js' ];

// Load plugins
var gulp			= require('gulp'),
	browserSync		= require('browser-sync'), // Asynchronous browser loading on .scss file changes
	phpcs			= require('gulp-phpcs'),
	reload			= browserSync.reload,
	autoprefixer	= require('gulp-autoprefixer'), // Autoprefixing magic
	minifycss		= require('gulp-uglifycss'),
	uglify 			= require('gulp-uglify'),
	imagemin		= require('gulp-imagemin'),
	rename 			= require('gulp-rename'),
	concat			= require('gulp-concat'),
	notify 			= require('gulp-notify'),
	//cmq			= require('gulp-combine-media-queries'),
	combineMq		= require('gulp-combine-mq'),
	runSequence		= require('gulp-run-sequence'),
	sass			= require('gulp-sass'),
	plugins			= require('gulp-load-plugins')({ camelize: true }),
	del				= require('del'), // Helps with removing files and directories in our run tasks
	zip				= require('gulp-zip'), // Using to zip up our packaged theme into a tasty zip file that can be installed in WordPress!
	plumber			= require('gulp-plumber'), // Helps prevent stream crashing on errors
	filter			= require('gulp-filter'),
	sourcemaps		= require('gulp-sourcemaps');
	ftp				= require('gulp-ftp');
/**
 * Browser Sync
 *
 * The 'cherry on top!' Asynchronous browser syncing of assets across multiple devices!! Watches for changes to js, image and php files
 * Although, I think this is redundant, since we have a watch task that does this already.
*/
gulp.task('browser-sync', function() {
	var files = [
		'**/*.php',
		'**/*.{png,jpg,gif}'
	];
	browserSync.init(files, {
		proxy: url
	});
});


/**
 * Styles
 *
 * Looking at src/sass and compiling the files into Expanded format, Autoprefixing and sending the files to the build folder
*/
gulp.task('styles', function () {
	gulp.src([source+'sass/**/*.scss'])
		.pipe(sourcemaps.init())
		.pipe(plumber({
			errorHandler: reportError
		}))
		.pipe(sass({
			// outputStyle: 'compressed',
			errLogToConsole: true,
			outputStyle: 'nested',
			precision: 3
		}))
		.on('error', reportError)
		.pipe(sourcemaps.write({includeContent: false}))
		.pipe(sourcemaps.init({loadMaps: true}))
		.pipe(autoprefixer('last 2 version', 'safari 5', 'ie 8', 'ie 9', 'opera 12.1', 'ios 6', 'android 4'))
		.pipe(sourcemaps.write('.'))
		.pipe(plumber.stop())
		.pipe(gulp.dest(source+'css'))
		.pipe(filter('**/*.css')) // Filtering stream to only css files
		//.pipe(cmq()) // Combines Media Queries
		//.pipe(combineMq({ beautify: false })) // Combines Media Queries
		.pipe(reload({stream:true})) // Inject Styles when style file is created
		.pipe(gulp.dest(source))
/*
		.pipe(ftp({
			host: 'ftp.roostertest3.com',
			user: 'admin_rg',
			pass: 'iI*#udMlG9sM',
			port: '21',
			remotePath: liveDir + themeDir
		}))
*/
		.pipe(reload({stream:true})) // Inject Styles when min style file is created
		.pipe(notify({ message: '"'+project+'" Styles task complete', onLast: true }))
});

/**
 * Scripts
 *
 * Look at src/js and concatenate those files, send them to assets/js where we then minimize the concatenated file.
*/

gulp.task('js', function() {
	return gulp.src([source+'js/app/**/*.js'])
		.pipe(concat('development.js'))
		.pipe(gulp.dest(source+'js'))
		.pipe(rename( {
			basename: "production",
			suffix: '-min'
		}))
		.pipe(uglify())
		.pipe(gulp.dest(source+'js/'))
		.pipe(notify({ message: project+' Scripts task complete', onLast: true }));
});


/**
 * Clean
 *
 * Being a little overzealous, but we're cleaning out the build folder, codekit-cache directory and annoying DS_Store files and Also
 * clearing out unoptimized image files in zip as those will have been moved and optimized
*/

gulp.task('cleanup', function(cb) {
	return del(['**/build','**/.sass-cache','**/.DS_Store','!node_modules/**'], cb) // much faster
});
gulp.task('cleanupFinal', function(cb) {
	return del(['**/build','**/.sass-cache','**/.DS_Store','!node_modules/**'], cb) // much faster
});

/**
 * Build task that moves essential theme files for production-ready sites
 *
 * First, we're moving PHP files to the build folder for redistribution. Also we're excluding the library, build and src directories. Why?
 * Excluding build prevents recursive copying and Inception levels of bullshit. We exclude library because there are certain non-php files
 * there that need to get moved as well. So I put the library directory into its own task. Excluding src because, well, we don't want to
 * distribute uniminified/unoptimized files. And, uh, grabbing screenshot.png cause I'm janky like that!
*/
gulp.task('buildPhp', function() {
	return gulp.src(themeBuild)
		.pipe(gulp.dest(build))
		.pipe(notify({ message: 'Moving files complete', onLast: true }));
});

// Copy Assets to Build
gulp.task('buildAssets', function() {
	return gulp.src([source+'**', source+'js/**/*.js'])
		.pipe(gulp.dest(build+'/assets'))
		.pipe(notify({ message: 'Copy of Assets directory complete', onLast: true }));
});

// Copy Library to Build
gulp.task('buildLibrary', function() {
	return gulp.src(['./library/**'])
		.pipe(gulp.dest(build+'library'))
		.pipe(notify({ message: 'Copy of Library directory complete', onLast: true }));
});


// ==== TASKS ==== //
/**
 * Gulp Default Task
 *
 * Compiles styles, fires-up browser sync, watches js and php files. Note browser sync task watches php files
 *
*/

// Package Distributable Theme
gulp.task('build', function(cb) {
	runSequence('styles', 'cleanup', 'js', 'buildPhp', 'buildLibrary', 'buildAssets','cleanupFinal', cb);
});

// Watch Task
gulp.task('default', ['styles', 'js', 'browser-sync' ], function () {
	gulp.watch(source+"sass/**/*.scss", ['styles',  browserSync.reload]);
	gulp.watch(source+'js/**/*.js', ['js', browserSync.reload]);
	gulp.watch(source+'img/**/*.{png,jpg,gif}', ['images']);
});

function onError(err) {
	sass.logError
	console.log(err);
}

function reportError(error) {
    notify({
        title: 'Gulp Task Error',
        message: 'Check the console.'
    }).write(error);

    console.log(error.toString());

    this.emit('end');
}