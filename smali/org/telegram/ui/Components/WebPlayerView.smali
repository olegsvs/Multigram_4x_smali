.class public Lorg/telegram/ui/Components/WebPlayerView;
.super Landroid/view/ViewGroup;
.source "WebPlayerView.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/WebPlayerView$ControlsView;,
        Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$JavaScriptInterface;,
        Lorg/telegram/ui/Components/WebPlayerView$CallJavaResultInterface;,
        Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;,
        Lorg/telegram/ui/Components/WebPlayerView$function;,
        Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field private static final aparatFileListPattern:Ljava/util/regex/Pattern;

.field private static final aparatIdRegex:Ljava/util/regex/Pattern;

.field private static final coubIdRegex:Ljava/util/regex/Pattern;

.field private static final exprName:Ljava/lang/String; = "[a-zA-Z_$][a-zA-Z_$0-9]*"

.field private static final exprParensPattern:Ljava/util/regex/Pattern;

.field private static final jsPattern:Ljava/util/regex/Pattern;

.field private static final playerIdPattern:Ljava/util/regex/Pattern;

.field private static final sigPattern:Ljava/util/regex/Pattern;

.field private static final sigPattern2:Ljava/util/regex/Pattern;

.field private static final stmtReturnPattern:Ljava/util/regex/Pattern;

.field private static final stmtVarPattern:Ljava/util/regex/Pattern;

.field private static final stsPattern:Ljava/util/regex/Pattern;

.field private static final vimeoIdRegex:Ljava/util/regex/Pattern;

.field private static final youtubeIdRegex:Ljava/util/regex/Pattern;


# instance fields
.field private allowInlineAnimation:Z

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private audioFocus:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private changedTextureView:Landroid/view/TextureView;

.field private changingTextureView:Z

.field private controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

.field private currentAlpha:F

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private currentTask:Landroid/os/AsyncTask;

.field private delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

.field private drawImage:Z

.field private firstFrameRendered:Z

.field private fullscreenButton:Landroid/widget/ImageView;

.field private hasAudioFocus:Z

.field private inFullscreen:Z

.field private initFailed:Z

.field private initied:Z

.field private inlineButton:Landroid/widget/ImageView;

.field private interfaceName:Ljava/lang/String;

.field private isAutoplay:Z

.field private isCompleted:Z

.field private isInline:Z

.field private isLoading:Z

.field private lastUpdateTime:J

.field private playAudioType:Ljava/lang/String;

.field private playAudioUrl:Ljava/lang/String;

.field private playButton:Landroid/widget/ImageView;

.field private playVideoType:Ljava/lang/String;

.field private playVideoUrl:Ljava/lang/String;

.field private progressAnimation:Landroid/animation/AnimatorSet;

.field private progressRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private resumeAudioOnFocusGain:Z

.field private seekToTime:I

.field private shareButton:Landroid/widget/ImageView;

.field private surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private switchToInlineRunnable:Ljava/lang/Runnable;

.field private switchingInlineMode:Z

.field private textureImageView:Landroid/widget/ImageView;

.field private textureView:Landroid/view/TextureView;

.field private textureViewContainer:Landroid/view/ViewGroup;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private waitingForFirstTextureUpload:I

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "(?:youtube(?:-nocookie)?\\.com/(?:[^/\\n\\s]+/\\S+/|(?:v|e(?:mbed)?)/|\\S*?[?&]v=)|youtu\\.be/)([a-zA-Z0-9_-]{11})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->youtubeIdRegex:Ljava/util/regex/Pattern;

    .line 167
    const-string/jumbo v0, "https?://(?:(?:www|(player))\\.)?vimeo(pro)?\\.com/(?!(?:channels|album)/[^/?#]+/?(?:$|[?#])|[^/]+/review/|ondemand/)(?:.*?/)?(?:(?:play_redirect_hls|moogaloop\\.swf)\\?clip_id=)?(?:videos?/)?([0-9]+)(?:/[\\da-f]+)?/?(?:[?&].*)?(?:[#].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->vimeoIdRegex:Ljava/util/regex/Pattern;

    .line 168
    const-string/jumbo v0, "(?:coub:|https?://(?:coub\\.com/(?:view|embed|coubs)/|c-cdn\\.coub\\.com/fb-player\\.swf\\?.*\\bcoub(?:ID|id)=))([\\da-z]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->coubIdRegex:Ljava/util/regex/Pattern;

    .line 169
    const-string/jumbo v0, "^https?://(?:www\\.)?aparat\\.com/(?:v/|video/video/embed/videohash/)([a-zA-Z0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->aparatIdRegex:Ljava/util/regex/Pattern;

    .line 171
    const-string/jumbo v0, "fileList\\s*=\\s*JSON\\.parse\\(\'([^\']+)\'\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->aparatFileListPattern:Ljava/util/regex/Pattern;

    .line 173
    const-string/jumbo v0, "\"sts\"\\s*:\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stsPattern:Ljava/util/regex/Pattern;

    .line 174
    const-string/jumbo v0, "\"assets\":.+?\"js\":\\s*(\"[^\"]+\")"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->jsPattern:Ljava/util/regex/Pattern;

    .line 175
    const-string/jumbo v0, "\\.sig\\|\\|([a-zA-Z0-9$]+)\\("

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern:Ljava/util/regex/Pattern;

    .line 176
    const-string/jumbo v0, "[\"\']signature[\"\']\\s*,\\s*([a-zA-Z0-9$]+)\\("

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern2:Ljava/util/regex/Pattern;

    .line 177
    const-string/jumbo v0, "var\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtVarPattern:Ljava/util/regex/Pattern;

    .line 178
    const-string/jumbo v0, "return(?:\\s+|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtReturnPattern:Ljava/util/regex/Pattern;

    .line 179
    const-string/jumbo v0, "[()]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->exprParensPattern:Ljava/util/regex/Pattern;

    .line 180
    const-string/jumbo v0, ".*?-([a-zA-Z0-9_-]+)(?:/watch_as3|/html5player(?:-new)?|(?:/[a-z]{2}_[A-Z]{2})?/base)?\\.([a-z]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->playerIdPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowInline"    # Z
    .param p3, "allowShare"    # Z
    .param p4, "webPlayerViewDelegate"    # Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    .line 1306
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    .line 153
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    .line 911
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$2;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 966
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$3;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchToInlineRunnable:Ljava/lang/Runnable;

    .line 1307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView;->setWillNotDraw(Z)V

    .line 1308
    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    .line 1310
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1312
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$4;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1329
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1331
    const-string/jumbo v0, "JavaScriptInterface"

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->interfaceName:Ljava/lang/String;

    .line 1332
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$JavaScriptInterface;

    new-instance v2, Lorg/telegram/ui/Components/WebPlayerView$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/WebPlayerView$5;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/WebPlayerView$JavaScriptInterface;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Lorg/telegram/ui/Components/WebPlayerView$CallJavaResultInterface;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 1344
    .local v7, "webSettings":Landroid/webkit/WebSettings;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1345
    const-string/jumbo v0, "utf-8"

    invoke-virtual {v7, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->getTextureViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    .line 1349
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setPivotX(F)V

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setPivotY(F)V

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1358
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1359
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    .line 1360
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1361
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1367
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1368
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 1371
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1378
    :goto_2
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1382
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    .line 1383
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1384
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v9, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/16 v0, 0x38

    const/high16 v1, 0x42600000    # 56.0f

    const/16 v2, 0x55

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$6;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1396
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    .line 1397
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1398
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$7;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1418
    if-eqz p2, :cond_1

    .line 1419
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    const/16 v2, 0x38

    const/16 v3, 0x30

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$8;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1479
    :cond_1
    if-eqz p3, :cond_2

    .line 1480
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1482
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1483
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    const/16 v2, 0x38

    const/16 v3, 0x30

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$9;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1494
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1495
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    .line 1496
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    .line 1497
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    .line 1498
    return-void

    .line 116
    .end local v7    # "webSettings":Landroid/webkit/WebSettings;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1355
    .restart local v7    # "webSettings":Landroid/webkit/WebSettings;
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1375
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern2:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    return v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    return p1
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->onInitFailed()V

    return-void
.end method

.method static synthetic access$2400()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->aparatFileListPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/WebPlayerView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    return v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/WebPlayerView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    return p1
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->exprParensPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/WebPlayerView;Landroid/view/TextureView;)Landroid/view/TextureView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Landroid/view/TextureView;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/WebPlayerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    return-void
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtVarPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    return v0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->drawImage:Z

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/WebPlayerView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    return v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/WebPlayerView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # F

    .prologue
    .line 82
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/WebPlayerView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/WebPlayerView;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtReturnPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/WebPlayerView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenState(Z)V

    return-void
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchToInlineRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/Components/WebPlayerView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stsPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->jsPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->playerIdPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private checkAudioFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1666
    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->hasAudioFocus:Z

    if-nez v1, :cond_0

    .line 1667
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1668
    .local v0, "audioManager":Landroid/media/AudioManager;
    iput-boolean v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->hasAudioFocus:Z

    .line 1669
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1670
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    .line 1673
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private getControlView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    return-object v0
.end method

.method private getProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object v0
.end method

.method private onInitFailed()V
    .locals 2

    .prologue
    .line 1501
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1502
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setVisibility(I)V

    .line 1504
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onInitFailed()V

    .line 1505
    return-void
.end method

.method private preparePlayer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1746
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1770
    :cond_0
    :goto_0
    return-void

    .line 1749
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1750
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1754
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 1756
    iput-boolean v5, p0, Lorg/telegram/ui/Components/WebPlayerView;->isLoading:Z

    .line 1758
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1759
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    .line 1763
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    .line 1764
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    .line 1765
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    .line 1766
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    .line 1767
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_0

    .line 1752
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 1761
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    goto :goto_2
.end method

.method private showProgress(ZZ)V
    .locals 8
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2048
    if-eqz p2, :cond_2

    .line 2049
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 2050
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2052
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    .line 2053
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const-string/jumbo v5, "alpha"

    new-array v6, v6, [F

    if-eqz p1, :cond_1

    :goto_0
    aput v0, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2054
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2055
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$10;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2061
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2065
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2053
    goto :goto_0

    .line 2063
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private updateFullscreenButton()V
    .locals 8

    .prologue
    const/16 v2, 0x55

    const/16 v0, 0x38

    const/high16 v1, 0x42600000    # 56.0f

    const/4 v3, 0x0

    .line 1703
    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v4, :cond_1

    .line 1704
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1715
    :goto_0
    return-void

    .line 1707
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1708
    iget-boolean v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v4, :cond_2

    .line 1709
    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const v5, 0x7f0200e3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1710
    iget-object v7, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/high16 v6, 0x40a00000    # 5.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1712
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const v5, 0x7f0200f8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1713
    iget-object v7, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateFullscreenState(Z)V
    .locals 8
    .param p1, "byButton"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1779
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 1836
    :goto_0
    return-void

    .line 1782
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    .line 1784
    iput-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    .line 1785
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v0, :cond_1

    .line 1786
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1787
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1792
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_5

    .line 1793
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1794
    .local v7, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v7, :cond_2

    .line 1795
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1810
    .end local v7    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVideoRotation()I

    move-result v4

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    .line 1811
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1812
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 1813
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1814
    .local v6, "parent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_3

    .line 1815
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1818
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5500(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    goto :goto_0

    .line 1789
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1798
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1799
    .restart local v6    # "parent":Landroid/view/ViewGroup;
    if-eq v6, p0, :cond_2

    .line 1800
    if-eqz v6, :cond_6

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1803
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 1804
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1806
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1820
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_a

    .line 1821
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1822
    .restart local v7    # "viewGroup":Landroid/view/ViewGroup;
    if-eqz v7, :cond_9

    .line 1823
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1834
    .end local v7    # "viewGroup":Landroid/view/ViewGroup;
    :cond_9
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVideoRotation()I

    move-result v4

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;

    goto/16 :goto_0

    .line 1826
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1827
    .restart local v6    # "parent":Landroid/view/ViewGroup;
    if-eq v6, p0, :cond_9

    .line 1828
    if-eqz v6, :cond_b

    .line 1829
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1831
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;I)V

    goto :goto_3
.end method

.method private updateInlineButton()V
    .locals 4

    .prologue
    const/16 v3, 0x35

    const/16 v2, 0x28

    .line 1733
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1743
    :goto_0
    return-void

    .line 1736
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200e4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1737
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1738
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_3

    .line 1739
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1736
    :cond_1
    const v0, 0x7f0200f9

    goto :goto_1

    .line 1737
    :cond_2
    const/16 v0, 0x8

    goto :goto_2

    .line 1741
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x32

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updatePlayButton()V
    .locals 4

    .prologue
    .line 1650
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5500(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    .line 1651
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1652
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1653
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    if-eqz v0, :cond_1

    .line 1654
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0200cc

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1663
    :goto_1
    return-void

    .line 1654
    :cond_0
    const v0, 0x7f0200cb

    goto :goto_0

    .line 1656
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0200ff

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0200fd

    goto :goto_2

    .line 1659
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0200fb

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1660
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1661
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->checkAudioFocus()V

    goto :goto_1

    .line 1659
    :cond_4
    const v0, 0x7f0200fa

    goto :goto_3
.end method

.method private updateShareButton()V
    .locals 2

    .prologue
    .line 1718
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1722
    :goto_0
    return-void

    .line 1721
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 2039
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 2040
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 2041
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 2042
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    .line 2044
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2045
    return-void
.end method

.method protected downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "parentTask"    # Landroid/os/AsyncTask;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 434
    const/4 v3, 0x1

    .line 435
    .local v3, "canRetry":Z
    const/4 v11, 0x0

    .line 436
    .local v11, "httpConnectionStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 437
    .local v7, "done":Z
    const/16 v16, 0x0

    .line 438
    .local v16, "result":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 440
    .local v10, "httpConnection":Ljava/net/URLConnection;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 441
    .local v8, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 442
    const-string/jumbo v19, "User-Agent"

    const-string/jumbo v20, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string/jumbo v19, "Accept-Encoding"

    const-string/jumbo v20, "gzip, deflate"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string/jumbo v19, "Accept-Language"

    const-string/jumbo v20, "en-us,en;q=0.5"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string/jumbo v19, "Accept"

    const-string/jumbo v20, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string/jumbo v19, "Accept-Charset"

    const-string/jumbo v20, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 448
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 449
    instance-of v0, v10, Ljava/net/HttpURLConnection;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 450
    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v13, v0

    .line 451
    .local v13, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 452
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 453
    .local v18, "status":I
    const/16 v19, 0x12e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v19, 0x12d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v19, 0x12f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 454
    :cond_0
    const-string/jumbo v19, "Location"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 455
    .local v14, "newUrl":Ljava/lang/String;
    const-string/jumbo v19, "Set-Cookie"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "cookies":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    .end local v8    # "downloadUrl":Ljava/net/URL;
    invoke-direct {v8, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 457
    .restart local v8    # "downloadUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 458
    const-string/jumbo v19, "Cookie"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string/jumbo v19, "User-Agent"

    const-string/jumbo v20, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string/jumbo v19, "Accept-Encoding"

    const-string/jumbo v20, "gzip, deflate"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string/jumbo v19, "Accept-Language"

    const-string/jumbo v20, "en-us,en;q=0.5"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v19, "Accept"

    const-string/jumbo v20, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string/jumbo v19, "Accept-Charset"

    const-string/jumbo v20, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .end local v5    # "cookies":Ljava/lang/String;
    .end local v13    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v14    # "newUrl":Ljava/lang/String;
    .end local v18    # "status":I
    :cond_1
    invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V

    .line 467
    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "httpConnectionStream":Ljava/io/InputStream;
    .local v12, "httpConnectionStream":Ljava/io/InputStream;
    move-object v11, v12

    .line 485
    .end local v8    # "downloadUrl":Ljava/net/URL;
    .end local v12    # "httpConnectionStream":Ljava/io/InputStream;
    .restart local v11    # "httpConnectionStream":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_4

    .line 487
    if-eqz v10, :cond_2

    :try_start_1
    instance-of v0, v10, Ljava/net/HttpURLConnection;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 488
    check-cast v10, Ljava/net/HttpURLConnection;

    .end local v10    # "httpConnection":Ljava/net/URLConnection;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 489
    .local v4, "code":I
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-eq v4, v0, :cond_2

    const/16 v19, 0xca

    move/from16 v0, v19

    if-eq v4, v0, :cond_2

    const/16 v19, 0x130

    move/from16 v0, v19

    if-eq v4, v0, :cond_2

    .line 497
    .end local v4    # "code":I
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    .line 499
    const v19, 0x8000

    :try_start_2
    move/from16 v0, v19

    new-array v6, v0, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .local v6, "data":[B
    move-object/from16 v17, v16

    .line 501
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .local v17, "result":Ljava/lang/StringBuilder;
    :goto_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/AsyncTask;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v16, v17

    .line 528
    .end local v6    # "data":[B
    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    .line 529
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 535
    :cond_4
    :goto_4
    if-eqz v7, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_5
    return-object v19

    .line 468
    .restart local v10    # "httpConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v9

    .line 469
    .local v9, "e":Ljava/lang/Throwable;
    instance-of v0, v9, Ljava/net/SocketTimeoutException;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 470
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 471
    const/4 v3, 0x0

    .line 482
    :cond_5
    :goto_6
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 473
    :cond_6
    instance-of v0, v9, Ljava/net/UnknownHostException;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 474
    const/4 v3, 0x0

    goto :goto_6

    .line 475
    :cond_7
    instance-of v0, v9, Ljava/net/SocketException;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 476
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "ECONNRESET"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 477
    const/4 v3, 0x0

    goto :goto_6

    .line 479
    :cond_8
    instance-of v0, v9, Ljava/io/FileNotFoundException;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 480
    const/4 v3, 0x0

    goto :goto_6

    .line 493
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "httpConnection":Ljava/net/URLConnection;
    :catch_1
    move-exception v9

    .line 494
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 505
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "data":[B
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    :cond_9
    :try_start_5
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 506
    .local v15, "read":I
    if-lez v15, :cond_a

    .line 507
    if-nez v17, :cond_d

    .line 508
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 510
    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :goto_7
    :try_start_6
    new-instance v19, Ljava/lang/String;

    const/16 v20, 0x0

    const-string/jumbo v21, "UTF-8"

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v6, v1, v15, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v17, v16

    .line 520
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 511
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 512
    const/4 v7, 0x1

    move-object/from16 v16, v17

    .line 513
    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto :goto_3

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    :cond_b
    move-object/from16 v16, v17

    .line 515
    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto/16 :goto_3

    .line 517
    .end local v15    # "read":I
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v9

    move-object/from16 v16, v17

    .line 518
    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :goto_8
    :try_start_7
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 522
    .end local v6    # "data":[B
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 523
    .local v9, "e":Ljava/lang/Throwable;
    :goto_9
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 531
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v9

    .line 532
    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 535
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 522
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "data":[B
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v9

    move-object/from16 v16, v17

    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto :goto_9

    .line 517
    .restart local v15    # "read":I
    :catch_6
    move-exception v9

    goto :goto_8

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    :cond_d
    move-object/from16 v16, v17

    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto :goto_7
.end method

.method public enterFullscreen()V
    .locals 1

    .prologue
    .line 1856
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1859
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    .line 1860
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    .line 1861
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenState(Z)V

    goto :goto_0
.end method

.method public exitFullscreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1839
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v0, :cond_0

    .line 1845
    :goto_0
    return-void

    .line 1842
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    .line 1843
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    .line 1844
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenState(Z)V

    goto :goto_0
.end method

.method public getAspectRatioView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method public getControlsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    return-object v0
.end method

.method public getTextureImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 2027
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public isInFullscreen()Z
    .locals 1

    .prologue
    .line 1865
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    return v0
.end method

.method public isInitied()Z
    .locals 1

    .prologue
    .line 1848
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    .prologue
    .line 1852
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/String;Z)Z
    .locals 24
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "thumb"    # Lorg/telegram/tgnet/TLRPC$Photo;
    .param p3, "originalUrl"    # Ljava/lang/String;
    .param p4, "autoplay"    # Z

    .prologue
    .line 1869
    const/16 v23, 0x0

    .line 1870
    .local v23, "youtubeId":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1871
    .local v22, "vimeoId":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1872
    .local v13, "coubId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1873
    .local v11, "aparatId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1874
    .local v17, "mp4File":Ljava/lang/String;
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I

    .line 1875
    if-eqz p1, :cond_0

    .line 1876
    const-string/jumbo v3, ".mp4"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1877
    move-object/from16 v17, p1

    .line 1952
    :cond_0
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    .line 1953
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    .line 1954
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    .line 1955
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    .line 1956
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->destroy()V

    .line 1958
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    .line 1959
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    .line 1960
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v3, :cond_1

    .line 1961
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1962
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    .line 1964
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    .line 1965
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    .line 1966
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    .line 1967
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1968
    if-eqz p2, :cond_10

    .line 1969
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v4, 0x50

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v18

    .line 1970
    .local v18, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v18, :cond_2

    .line 1971
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5400(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_e

    move-object/from16 v0, v18

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_1
    if-eqz p2, :cond_f

    const-string/jumbo v7, "80_80_b"

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;I)V

    .line 1972
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->drawImage:Z

    .line 1978
    .end local v18    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 1979
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1980
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    .line 1982
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->isLoading:Z

    .line 1983
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setProgress(I)V

    .line 1984
    if-eqz v17, :cond_11

    .line 1985
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    .line 1986
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    .line 1987
    const-string/jumbo v3, "other"

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    .line 1988
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    if-eqz v3, :cond_4

    .line 1989
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V

    .line 1991
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 2015
    :goto_4
    if-nez v23, :cond_5

    if-nez v22, :cond_5

    if-nez v13, :cond_5

    if-nez v11, :cond_5

    if-eqz v17, :cond_16

    .line 2016
    :cond_5
    const/4 v3, 0x1

    .line 2019
    :goto_5
    return v3

    .line 1880
    :cond_6
    if-eqz p3, :cond_7

    .line 1882
    :try_start_0
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 1883
    .local v21, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "t"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1884
    .local v19, "t":Ljava/lang/String;
    if-eqz v19, :cond_7

    .line 1885
    const-string/jumbo v3, "m"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1886
    const-string/jumbo v3, "m"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1887
    .local v12, "args":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    const/4 v4, 0x1

    aget-object v4, v12, v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    .end local v12    # "args":[Ljava/lang/String;
    .end local v19    # "t":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_7
    :goto_6
    :try_start_1
    sget-object v3, Lorg/telegram/ui/Components/WebPlayerView;->youtubeIdRegex:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 1897
    .local v16, "matcher":Ljava/util/regex/Matcher;
    const/4 v15, 0x0

    .line 1898
    .local v15, "id":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1899
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 1901
    :cond_8
    if-eqz v15, :cond_9

    .line 1902
    move-object/from16 v23, v15

    .line 1907
    .end local v15    # "id":Ljava/lang/String;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_9
    :goto_7
    if-nez v23, :cond_b

    .line 1909
    :try_start_2
    sget-object v3, Lorg/telegram/ui/Components/WebPlayerView;->vimeoIdRegex:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 1910
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    const/4 v15, 0x0

    .line 1911
    .restart local v15    # "id":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1912
    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v15

    .line 1914
    :cond_a
    if-eqz v15, :cond_b

    .line 1915
    move-object/from16 v22, v15

    .line 1921
    .end local v15    # "id":Ljava/lang/String;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_b
    :goto_8
    if-nez v23, :cond_0

    if-nez v22, :cond_0

    .line 1923
    :try_start_3
    sget-object v3, Lorg/telegram/ui/Components/WebPlayerView;->aparatIdRegex:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 1924
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    const/4 v15, 0x0

    .line 1925
    .restart local v15    # "id":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1926
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v15

    .line 1928
    :cond_c
    if-eqz v15, :cond_0

    .line 1929
    move-object v11, v15

    goto/16 :goto_0

    .line 1889
    .end local v15    # "id":Ljava/lang/String;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .restart local v19    # "t":Ljava/lang/String;
    .restart local v21    # "uri":Landroid/net/Uri;
    :cond_d
    :try_start_4
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 1892
    .end local v19    # "t":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 1893
    .local v14, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    .line 1904
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 1905
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1917
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v14

    .line 1918
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1931
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 1932
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1971
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v18    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1975
    .end local v18    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->drawImage:Z

    goto/16 :goto_3

    .line 1994
    :cond_11
    if-eqz v23, :cond_13

    .line 1995
    new-instance v20, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 1996
    .local v20, "task":Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1997
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    .line 2012
    .end local v20    # "task":Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 2013
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V

    goto/16 :goto_4

    .line 1998
    :cond_13
    if-eqz v22, :cond_14

    .line 1999
    new-instance v20, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 2000
    .local v20, "task":Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2001
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    goto :goto_9

    .line 2002
    .end local v20    # "task":Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;
    :cond_14
    if-eqz v13, :cond_15

    .line 2003
    new-instance v20, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 2004
    .local v20, "task":Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2005
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    goto :goto_9

    .line 2006
    .end local v20    # "task":Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;
    :cond_15
    if-eqz v11, :cond_12

    .line 2007
    new-instance v20, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 2008
    .local v20, "task":Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2009
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    goto/16 :goto_9

    .line 2018
    .end local v20    # "task":Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setVisibility(I)V

    .line 2019
    const/4 v3, 0x0

    goto/16 :goto_5
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1677
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1678
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1680
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1682
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->hasAudioFocus:Z

    .line 1683
    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    .line 1700
    :cond_1
    :goto_0
    return-void

    .line 1684
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1685
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    .line 1686
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->resumeAudioOnFocusGain:Z

    if-eqz v0, :cond_1

    .line 1687
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->resumeAudioOnFocusGain:Z

    .line 1688
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_0

    .line 1690
    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    .line 1691
    iput v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    goto :goto_0

    .line 1692
    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 1693
    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    .line 1694
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1695
    iput-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->resumeAudioOnFocusGain:Z

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1697
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1558
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1559
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1563
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1564
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    .line 1625
    sub-int v2, p4, p2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 1626
    .local v0, "x":I
    sub-int v2, p5, p3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 1627
    .local v1, "y":I
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->layout(IIII)V

    .line 1628
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 1629
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->layout(IIII)V

    .line 1631
    :cond_0
    sub-int v2, p4, p2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 1632
    sub-int v2, p5, p3

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 1633
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgressView;->layout(IIII)V

    .line 1634
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5400(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 1635
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x42300000    # 44.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 1639
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1640
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1641
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->measure(II)V

    .line 1642
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 1643
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->measure(II)V

    .line 1645
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadialProgressView;->measure(II)V

    .line 1646
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/WebPlayerView;->setMeasuredDimension(II)V

    .line 1647
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .prologue
    .line 1584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    .line 1585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J

    .line 1586
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    .line 1587
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 9
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 1531
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1532
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    .line 1538
    :cond_0
    :goto_0
    if-eq p2, v7, :cond_3

    if-eq p2, v6, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1539
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v0, p0, v6}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V

    .line 1543
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p2, v7, :cond_4

    .line 1544
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1554
    :cond_1
    :goto_2
    return-void

    .line 1535
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    goto :goto_0

    .line 1541
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v0, p0, v8}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V

    goto :goto_1

    .line 1546
    :cond_4
    if-ne p2, v7, :cond_1

    .line 1547
    iput-boolean v6, p0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    .line 1548
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 1550
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    goto :goto_2
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1591
    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    if-eqz v2, :cond_2

    .line 1592
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    .line 1593
    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v2, :cond_2

    .line 1594
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v2, :cond_1

    .line 1595
    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    .line 1597
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1598
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1599
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1603
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1608
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1609
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1611
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1612
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1614
    iput-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 1617
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    .line 1618
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVideoRotation()I

    move-result v4

    iget-boolean v5, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSwitchInlineMode(Landroid/view/View;ZFIZ)Landroid/view/TextureView;

    .line 1619
    iput v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    .line 1621
    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 1568
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_2

    .line 1569
    const/16 v2, 0x5a

    if-eq p3, v2, :cond_0

    const/16 v2, 0x10e

    if-ne p3, v2, :cond_1

    .line 1570
    :cond_0
    move v1, p1

    .line 1571
    .local v1, "temp":I
    move p1, p2

    .line 1572
    move p2, v1

    .line 1574
    .end local v1    # "temp":I
    :cond_1
    if-nez p2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1575
    .local v0, "ratio":F
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v0, p3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 1576
    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v2, :cond_2

    .line 1577
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v2, v0, p3}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onVideoSizeChanged(FI)V

    .line 1580
    .end local v0    # "ratio":F
    :cond_2
    return-void

    .line 1574
    :cond_3
    int-to-float v2, p1

    mul-float/2addr v2, p4

    int-to-float v3, p2

    div-float v0, v2, v3

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1774
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1775
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 1776
    return-void
.end method

.method public updateTextureImageView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1508
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 1527
    :goto_0
    return-void

    .line 1512
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 1513
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1522
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1523
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1516
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1517
    iput-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 1519
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1525
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
