var gulp = require('gulp');
var minifycss = require('gulp-clean-css');
var uglify = require('gulp-uglify');
var htmlmin = require('gulp-htmlmin');
var htmlclean = require('gulp-htmlclean');
var imagemin = require('gulp-imagemin');
var pngquant = require('imagemin-pngquant');

var root = "./public";
var buildDir = root;
var datas={
    html:[root+"/**/*.html"],
    image:[root+"/**/*.jpg"],
    css:[root+"/**/*.css"],
    js:[root+"/**/*.js",'!*min.js']
}

// 压缩 public 目录 css
gulp.task('minify-css', function() {
    return gulp.src('./public/**/*.css')
        .pipe(minifycss())
        .pipe(gulp.dest('./public'));
});
// 压缩 public 目录 html
gulp.task('minify-html', function() {
  return gulp.src('./public/**/*.html')
    .pipe(htmlclean())
    .pipe(htmlmin({
         removeComments: true,
         minifyJS: true,
         minifyCSS: true,
         minifyURLs: true,
    }))
    .pipe(gulp.dest('./public'))
});

gulp.task('minify-js', function() {
    return gulp.src('./public/**/*.js')
        .pipe(uglify())
        .pipe(gulp.dest('./public'));
});

// 压缩 public 目录图片
gulp.task("image",function(){
    gulp.src(datas.image)
    .pipe(imagemin({
        progressive:true,
        svgoPlugins:[{removeViewBox:false}],
        use:[pngquant()] //压缩率64%
    }))
    .pipe(gulp.dest(buildDir));
});

// 执行 gulp 命令时执行的任务
gulp.task('default', [
    'minify-html','minify-css','minify-js'
]);