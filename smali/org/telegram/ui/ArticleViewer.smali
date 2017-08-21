.class public Lorg/telegram/ui/ArticleViewer;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;,
        Lorg/telegram/ui/ArticleViewer$RadialProgressView;,
        Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;,
        Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;,
        Lorg/telegram/ui/ArticleViewer$BlockFooterCell;,
        Lorg/telegram/ui/ArticleViewer$BlockTitleCell;,
        Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;,
        Lorg/telegram/ui/ArticleViewer$BlockChannelCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;,
        Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;,
        Lorg/telegram/ui/ArticleViewer$BlockDividerCell;,
        Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockListCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;,
        Lorg/telegram/ui/ArticleViewer$BlockCollageCell;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;,
        Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;,
        Lorg/telegram/ui/ArticleViewer$BlockAudioCell;,
        Lorg/telegram/ui/ArticleViewer$BlockVideoCell;,
        Lorg/telegram/ui/ArticleViewer$WebpageAdapter;,
        Lorg/telegram/ui/ArticleViewer$CheckForLongPress;,
        Lorg/telegram/ui/ArticleViewer$WindowView;,
        Lorg/telegram/ui/ArticleViewer$CheckForTap;,
        Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;,
        Lorg/telegram/ui/ArticleViewer$FontCell;,
        Lorg/telegram/ui/ArticleViewer$ColorCell;,
        Lorg/telegram/ui/ArticleViewer$SizeChooseView;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/ArticleViewer; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final TEXT_FLAG_ITALIC:I = 0x2

.field private static final TEXT_FLAG_MEDIUM:I = 0x1

.field private static final TEXT_FLAG_MONO:I = 0x4

.field private static final TEXT_FLAG_REGULAR:I = 0x0

.field private static final TEXT_FLAG_STRIKE:I = 0x20

.field private static final TEXT_FLAG_UNDERLINE:I = 0x10

.field private static final TEXT_FLAG_URL:I = 0x8

.field private static audioTimePaint:Landroid/text/TextPaint; = null

.field private static authorTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static captionTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static channelNamePaint:Landroid/text/TextPaint; = null

.field private static colorPaint:Landroid/graphics/Paint; = null

.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator; = null

.field private static dividerPaint:Landroid/graphics/Paint; = null

.field private static dotsPaint:Landroid/graphics/Paint; = null

.field private static embedPostAuthorPaint:Landroid/text/TextPaint; = null

.field private static embedPostCaptionTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static embedPostDatePaint:Landroid/text/TextPaint; = null

.field private static embedPostTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static embedTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static errorTextPaint:Landroid/text/TextPaint; = null

.field private static footerTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static final gallery_menu_openin:I = 0x3

.field private static final gallery_menu_save:I = 0x1

.field private static final gallery_menu_share:I = 0x2

.field private static headerTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static listTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static listTextPointerPaint:Landroid/text/TextPaint;

.field private static paragraphTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static preformattedBackgroundPaint:Landroid/graphics/Paint;

.field private static preformattedTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static progressDrawables:[Landroid/graphics/drawable/Drawable;

.field private static progressPaint:Landroid/graphics/Paint;

.field private static quoteLinePaint:Landroid/graphics/Paint;

.field private static quoteTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static selectorPaint:Landroid/graphics/Paint;

.field private static slideshowTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subheaderTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subquoteTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subtitleTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static titleTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static urlPaint:Landroid/graphics/Paint;

.field private static videoTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field public anchors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

.field private animationEndRunnable:Ljava/lang/Runnable;

.field private animationInProgress:I

.field private animationStartTime:J

.field private animationValue:F

.field private animationValues:[[F

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private attachedToWindow:Z

.field private backButton:Landroid/widget/ImageView;

.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private barBackground:Landroid/view/View;

.field private blackPaint:Landroid/graphics/Paint;

.field public blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private canDragDown:Z

.field private canZoom:Z

.field private captionTextView:Landroid/widget/TextView;

.field private captionTextViewNew:Landroid/widget/TextView;

.field private captionTextViewOld:Landroid/widget/TextView;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private changingPage:Z

.field private channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

.field private checkingForLongPress:Z

.field private collapsed:Z

.field private colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

.field private containerView:Landroid/widget/FrameLayout;

.field private coords:[I

.field private createdWebViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;",
            ">;"
        }
    .end annotation
.end field

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field private currentFileNames:[Ljava/lang/String;

.field private currentHeaderHeight:I

.field private currentIndex:I

.field private currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

.field private currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

.field private currentRotation:I

.field private currentThumb:Landroid/graphics/Bitmap;

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private disableShowCheck:Z

.field private discardTap:Z

.field private dontResetZoomOnFirstLayout:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private drawBlockSelection:Z

.field private fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

.field private final fontSizeCount:I

.field private fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private fullscreenTextureView:Landroid/view/TextureView;

.field private fullscreenVideoContainer:Landroid/widget/FrameLayout;

.field private fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private headerPaint:Landroid/graphics/Paint;

.field private headerProgressPaint:Landroid/graphics/Paint;

.field private headerView:Landroid/widget/FrameLayout;

.field private hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private imagesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isPhotoVisible:Z

.field private isPlaying:Z

.field private isRtl:I

.field private isVisible:Z

.field private lastInsets:Ljava/lang/Object;

.field private layerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private leftImage:Lorg/telegram/messenger/ImageReceiver;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

.field private loadingChannel:Z

.field private maxX:F

.field private maxY:F

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private nightModeEnabled:Z

.field private nightModeHintView:Landroid/widget/FrameLayout;

.field private nightModeImageView:Landroid/widget/ImageView;

.field private openUrlReqId:I

.field private pagesStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            ">;"
        }
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

.field private pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

.field private photoAnimationEndRunnable:Ljava/lang/Runnable;

.field private photoAnimationInProgress:I

.field private photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

.field public photoBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private photoContainerBackground:Landroid/view/View;

.field private photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

.field private photoTransitionAnimationStartTime:J

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private pressCount:I

.field private pressedLayoutY:I

.field private pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

.field private pressedLinkOwnerLayout:Landroid/text/StaticLayout;

.field private pressedLinkOwnerView:Landroid/view/View;

.field private previewsReqId:I

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private progressViewAnimation:Landroid/animation/AnimatorSet;

.field private radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

.field private rightImage:Lorg/telegram/messenger/ImageReceiver;

.field private scale:F

.field private scrimPaint:Landroid/graphics/Paint;

.field private scroller:Lorg/telegram/ui/Components/Scroller;

.field private selectedColor:I

.field private selectedFont:I

.field private selectedFontSize:I

.field private settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private shareButton:Landroid/widget/ImageView;

.field private shareContainer:Landroid/widget/FrameLayout;

.field private showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

.field private slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

.field private slideDotDrawable:Landroid/graphics/drawable/Drawable;

.field private switchImageAfterAnimation:I

.field private textureUploaded:Z

.field private transitionAnimationStartTime:J

.field private translationX:F

.field private translationY:F

.field private updateProgressRunnable:Ljava/lang/Runnable;

.field private urlPath:Lorg/telegram/ui/Components/LinkPath;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoPlayButton:Landroid/widget/ImageView;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

.field private videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

.field private videoPlayerTime:Landroid/widget/TextView;

.field private videoTextureView:Landroid/view/TextureView;

.field private visibleDialog:Landroid/app/Dialog;

.field private wasLayout:Z

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    .line 1103
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->audioTimePaint:Landroid/text/TextPaint;

    .line 1105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->captionTextPaints:Ljava/util/HashMap;

    .line 1106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Ljava/util/HashMap;

    .line 1107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Ljava/util/HashMap;

    .line 1108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Ljava/util/HashMap;

    .line 1109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Ljava/util/HashMap;

    .line 1110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Ljava/util/HashMap;

    .line 1111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Ljava/util/HashMap;

    .line 1112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Ljava/util/HashMap;

    .line 1113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Ljava/util/HashMap;

    .line 1114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Ljava/util/HashMap;

    .line 1115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Ljava/util/HashMap;

    .line 1116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subquoteTextPaints:Ljava/util/HashMap;

    .line 1117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedTextPaints:Ljava/util/HashMap;

    .line 1118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->slideshowTextPaints:Ljava/util/HashMap;

    .line 1119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Ljava/util/HashMap;

    .line 1120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Ljava/util/HashMap;

    .line 1121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->videoTextPaints:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerPaint:Landroid/graphics/Paint;

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerProgressPaint:Landroid/graphics/Paint;

    .line 209
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .line 211
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    .line 219
    new-instance v0, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LinkPath;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    .line 243
    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->fontSizeCount:I

    .line 244
    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    .line 245
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->selectedColor:I

    .line 246
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    .line 248
    new-array v0, v4, [Lorg/telegram/ui/ArticleViewer$ColorCell;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    .line 251
    new-array v0, v2, [Lorg/telegram/ui/ArticleViewer$FontCell;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->isRtl:I

    .line 6442
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    .line 6447
    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    .line 6455
    new-instance v0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;-><init>(Lorg/telegram/ui/ArticleViewer;I)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    .line 6456
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blackPaint:Landroid/graphics/Paint;

    .line 6458
    new-array v0, v4, [Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    .line 6479
    new-instance v0, Lorg/telegram/ui/ArticleViewer$39;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$39;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 6496
    const/16 v0, 0x8

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    .line 6505
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 6506
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 6507
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 6510
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    .line 6521
    iput v5, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 6530
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 6532
    iput v5, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    .line 6543
    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    .line 6549
    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    .line 6556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    .line 6725
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintSize()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/ArticleViewer;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$10402(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object v0
.end method

.method static synthetic access$10502(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p1
.end method

.method static synthetic access$10600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10702(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$10800(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$10802(Lorg/telegram/ui/ArticleViewer;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11100()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$11102(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 139
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->isRtl:I

    return v0
.end method

.method static synthetic access$11902(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->isRtl:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$12000()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$12002(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 139
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/ArticleViewer$BlockChannelCell;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->joinChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method static synthetic access$12300(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/ArticleViewer$BlockChannelCell;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->loadChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method static synthetic access$12400(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p3, "x3"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12500()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$12600(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$12700(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateVideoPlayerTime()V

    return-void
.end method

.method static synthetic access$12800(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$12900()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$12902(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0
    .param p0, "x0"    # Landroid/view/animation/DecelerateInterpolator;

    .prologue
    .line 139
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    return-object v0
.end method

.method static synthetic access$13000()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$13002(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 139
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$13100(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$13200(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$13300()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$13400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13500(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    return v0
.end method

.method static synthetic access$13502(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    return p1
.end method

.method static synthetic access$13600(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$13602(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$13700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$13900(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14102(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    return p1
.end method

.method static synthetic access$14202(Lorg/telegram/ui/ArticleViewer;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$14300(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->setImages()V

    return-void
.end method

.method static synthetic access$14400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$14500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$14600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$14602(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$14802(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    return p1
.end method

.method static synthetic access$14900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->onPhotoClosed(Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$15002(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->colorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    return v0
.end method

.method static synthetic access$202(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 139
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->colorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->onClosed()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    return v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    return p1
.end method

.method static synthetic access$300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->selectorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    return-object v0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/TextPaintUrlSpan;)Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    return-object p1
.end method

.method static synthetic access$302(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 139
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->selectorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->hideActionBar()V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ArticleViewer;)Landroid/text/StaticLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/ArticleViewer;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/text/StaticLayout;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLayoutY:I

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->drawBlockSelection:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;III)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->showPopup(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    return v0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    return v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "x2"    # J

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->drawContent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->checkScroll(I)V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerProgressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z

    return v0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z

    return p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateNightModeButton()V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintColors()V

    return-void
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->showNightModeHint()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->selectedColor:I

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/ArticleViewer$ColorCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    return-object v0
.end method

.method static synthetic access$6202(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    return p1
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/ArticleViewer$FontCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintFonts()V

    return-void
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    return v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ArticleViewer;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ArticleViewer;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->onSharePressed()V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ArticleViewer;I)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$CheckForLongPress;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    return-object v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    return v0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    return p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->nightModeHintView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Z)V

    return-void
.end method

.method static synthetic access$7702(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    return p1
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7802(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object v0
.end method

.method static synthetic access$804(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    return v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ArticleViewer;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->loadingChannel:Z

    return p1
.end method

.method static synthetic access$8400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$8402(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$8500(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showActionBar(I)V

    return-void
.end method

.method static synthetic access$8602(Lorg/telegram/ui/ArticleViewer;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$8700(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getSelectedColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # J

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    return-object v0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    return-object v0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/text/StaticLayout;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 139
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/text/StaticLayout;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    return-void
.end method

.method static synthetic access$9400()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$9700()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->audioTimePaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # J

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    return-object v0
.end method

.method private addAllMediaFromBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 7
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 2671
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v5, :cond_0

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2672
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    :cond_1
    :goto_0
    return-void

    .line 2673
    :cond_2
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v5, :cond_5

    move-object v4, p1

    .line 2674
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 2675
    .local v4, "slideshow":Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2676
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 2677
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 2678
    .local v3, "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v5, :cond_3

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v5, :cond_4

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2679
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2676
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2682
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .end local v4    # "slideshow":Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    :cond_5
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v5, :cond_8

    move-object v1, p1

    .line 2683
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 2684
    .local v1, "collage":Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2685
    .restart local v2    # "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    if-ge v0, v2, :cond_1

    .line 2686
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 2687
    .restart local v3    # "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v5, :cond_6

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v5, :cond_7

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2688
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2685
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2691
    .end local v0    # "a":I
    .end local v1    # "collage":Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    .end local v2    # "count":I
    .end local v3    # "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_8
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v5, :cond_9

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v5}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2692
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V
    .locals 4
    .param p1, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p2, "anchor"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1051
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    .line 1052
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1053
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Z)V

    .line 1056
    if-eqz p2, :cond_0

    .line 1057
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1058
    .local v0, "row":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1059
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1062
    .end local v0    # "row":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private animateTo(FFFZ)V
    .locals 6
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z

    .prologue
    .line 8067
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZI)V

    .line 8068
    return-void
.end method

.method private animateTo(FFFZI)V
    .locals 5
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z
    .param p5, "duration"    # I

    .prologue
    .line 8071
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 8093
    :goto_0
    return-void

    .line 8074
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    .line 8075
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    .line 8076
    iput p2, p0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    .line 8077
    iput p3, p0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    .line 8078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    .line 8079
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 8080
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const-string/jumbo v3, "animationValue"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 8081
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 8080
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 8083
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8084
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 8085
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$52;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$52;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8092
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 8080
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkAnimation()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3316
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    if-eqz v1, :cond_1

    .line 3317
    iget-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 3318
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3319
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3320
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 3322
    :cond_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 3325
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    .locals 31
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "layout"    # Landroid/text/StaticLayout;
    .param p4, "layoutX"    # I
    .param p5, "layoutY"    # I

    .prologue
    .line 1516
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1517
    :cond_0
    const/16 v28, 0x0

    .line 1633
    :goto_0
    return v28

    .line 1519
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1520
    .local v26, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1521
    .local v27, "y":I
    const/16 v19, 0x0

    .line 1522
    .local v19, "removeLink":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_9

    .line 1523
    move/from16 v0, v26

    move/from16 v1, p4

    if-lt v0, v1, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v28

    add-int v28, v28, p4

    move/from16 v0, v26

    move/from16 v1, v28

    if-gt v0, v1, :cond_5

    move/from16 v0, v27

    move/from16 v1, p5

    if-lt v0, v1, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v28

    add-int v28, v28, p5

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_5

    .line 1524
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    .line 1525
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    .line 1526
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLayoutY:I

    .line 1527
    invoke-virtual/range {p3 .. p3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    .line 1528
    .local v24, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1530
    sub-int v7, v26, p4

    .line 1531
    .local v7, "checkX":I
    sub-int v8, v27, p5

    .line 1532
    .local v8, "checkY":I
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v14

    .line 1533
    .local v14, "line":I
    int-to-float v0, v7

    move/from16 v28, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v14, v1}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v16

    .line 1534
    .local v16, "off":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v13

    .line 1535
    .local v13, "left":F
    int-to-float v0, v7

    move/from16 v28, v0

    cmpg-float v28, v13, v28

    if-gtz v28, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v28

    add-float v28, v28, v13

    int-to-float v0, v7

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-ltz v28, :cond_5

    .line 1536
    invoke-virtual/range {p3 .. p3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    .line 1537
    .local v6, "buffer":Landroid/text/Spannable;
    const-class v28, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move/from16 v0, v16

    move/from16 v1, v16

    move-object/from16 v2, v28

    invoke-interface {v6, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .line 1538
    .local v15, "link":[Lorg/telegram/ui/Components/TextPaintUrlSpan;
    if-eqz v15, :cond_5

    array-length v0, v15

    move/from16 v28, v0

    if-lez v28, :cond_5

    .line 1539
    const/16 v28, 0x0

    aget-object v28, v15, v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 1541
    .local v18, "pressedStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    .line 1542
    .local v17, "pressedEnd":I
    const/4 v4, 0x1

    .local v4, "a":I
    :goto_1
    array-length v0, v15

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v4, v0, :cond_4

    .line 1543
    aget-object v22, v15, v4

    .line 1544
    .local v22, "span":Lorg/telegram/ui/Components/TextPaintUrlSpan;
    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    .line 1545
    .local v23, "start":I
    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 1546
    .local v10, "end":I
    move/from16 v0, v18

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    move/from16 v0, v17

    if-le v10, v0, :cond_3

    .line 1547
    :cond_2
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1548
    move/from16 v18, v23

    .line 1549
    move/from16 v17, v10

    .line 1542
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1553
    .end local v10    # "end":I
    .end local v22    # "span":Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .end local v23    # "start":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v18

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/StaticLayout;IF)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    move-object/from16 v28, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v17

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1621
    .end local v4    # "a":I
    .end local v6    # "buffer":Landroid/text/Spannable;
    .end local v7    # "checkX":I
    .end local v8    # "checkY":I
    .end local v13    # "left":F
    .end local v14    # "line":I
    .end local v15    # "link":[Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .end local v16    # "off":I
    .end local v17    # "pressedEnd":I
    .end local v18    # "pressedStart":I
    .end local v24    # "text":Ljava/lang/CharSequence;
    :cond_5
    :goto_2
    if-eqz v19, :cond_6

    .line 1622
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .line 1623
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    .line 1624
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    .line 1625
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->invalidate()V

    .line 1627
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_7

    .line 1628
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->startCheckLongPress()V

    .line 1630
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    if-eqz v28, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 1631
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->cancelCheckLongPress()V

    .line 1633
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    move-object/from16 v28, v0

    if-eqz v28, :cond_d

    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1556
    .restart local v4    # "a":I
    .restart local v6    # "buffer":Landroid/text/Spannable;
    .restart local v7    # "checkX":I
    .restart local v8    # "checkY":I
    .restart local v13    # "left":F
    .restart local v14    # "line":I
    .restart local v15    # "link":[Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .restart local v16    # "off":I
    .restart local v17    # "pressedEnd":I
    .restart local v18    # "pressedStart":I
    .restart local v24    # "text":Ljava/lang/CharSequence;
    :catch_0
    move-exception v9

    .line 1557
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1561
    .end local v4    # "a":I
    .end local v6    # "buffer":Landroid/text/Spannable;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "left":F
    .end local v14    # "line":I
    .end local v15    # "link":[Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .end local v16    # "off":I
    .end local v17    # "pressedEnd":I
    .end local v18    # "pressedStart":I
    :catch_1
    move-exception v9

    .line 1562
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1566
    .end local v7    # "checkX":I
    .end local v8    # "checkY":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v24    # "text":Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1568
    const/16 v19, 0x1

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v25

    .line 1570
    .local v25, "url":Ljava/lang/String;
    if-eqz v25, :cond_5

    .line 1572
    const/4 v12, 0x0

    .line 1574
    .local v12, "isAnchor":Z
    const/16 v28, 0x23

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .local v11, "index":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v11, v0, :cond_b

    .line 1575
    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1576
    .local v5, "anchor":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 1578
    .local v21, "row":Ljava/lang/Integer;
    if-eqz v21, :cond_a

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1580
    const/4 v12, 0x1

    .line 1586
    .end local v21    # "row":Ljava/lang/Integer;
    :cond_a
    :goto_3
    if-nez v12, :cond_5

    .line 1587
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    move/from16 v28, v0

    if-nez v28, :cond_5

    .line 1588
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    .line 1589
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 1590
    .local v20, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 1591
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 1592
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v28

    new-instance v29, Lorg/telegram/ui/ArticleViewer$5;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v5, v2}, Lorg/telegram/ui/ArticleViewer$5;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    goto/16 :goto_2

    .line 1584
    .end local v5    # "anchor":Ljava/lang/String;
    .end local v20    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "anchor":Ljava/lang/String;
    goto :goto_3

    .line 1618
    .end local v5    # "anchor":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "isAnchor":Z
    .end local v25    # "url":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 1619
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 1633
    :cond_d
    const/16 v28, 0x0

    goto/16 :goto_0
.end method

.method private checkMinMax(Z)V
    .locals 4
    .param p1, "zoom"    # Z

    .prologue
    .line 8032
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 8033
    .local v0, "moveToX":F
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 8034
    .local v1, "moveToY":F
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 8035
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 8036
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    .line 8040
    :cond_0
    :goto_0
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 8041
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    .line 8045
    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    .line 8046
    return-void

    .line 8037
    :cond_2
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 8038
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_0

    .line 8042
    :cond_3
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 8043
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_1
.end method

.method private checkPhotoAnimation()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 7385
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-eqz v1, :cond_1

    .line 7386
    iget-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 7387
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 7388
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 7389
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 7391
    :cond_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    .line 7394
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkProgress(IZ)V
    .locals 9
    .param p1, "a"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 7297
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v6, v6, p1

    if-eqz v6, :cond_9

    .line 7298
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    .line 7299
    .local v1, "index":I
    if-ne p1, v4, :cond_2

    .line 7300
    add-int/lit8 v1, v1, 0x1

    .line 7304
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 7305
    .local v0, "f":Ljava/io/File;
    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v2

    .line 7306
    .local v2, "isVideo":Z
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 7307
    if-eqz v2, :cond_3

    .line 7308
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 7328
    :goto_1
    if-nez p1, :cond_1

    .line 7329
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-eqz v6, :cond_8

    if-nez v2, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->access$13800(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I

    move-result v6

    if-eqz v6, :cond_8

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    .line 7334
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "index":I
    .end local v2    # "isVideo":Z
    :cond_1
    :goto_3
    return-void

    .line 7301
    .restart local v1    # "index":I
    :cond_2
    if-ne p1, v8, :cond_0

    .line 7302
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7310
    .restart local v0    # "f":Ljava/io/File;
    .restart local v2    # "isVideo":Z
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v7, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_1

    .line 7313
    :cond_4
    if-eqz v2, :cond_7

    .line 7314
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 7315
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v8, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 7322
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 7323
    .local v3, "progress":Ljava/lang/Float;
    if-nez v3, :cond_5

    .line 7324
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 7326
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    goto :goto_1

    .line 7317
    .end local v3    # "progress":Ljava/lang/Float;
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v4, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_4

    .line 7320
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v5, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_4

    :cond_8
    move v4, v5

    .line 7329
    goto :goto_2

    .line 7332
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "index":I
    .end local v2    # "isVideo":Z
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_3
.end method

.method private checkScroll(I)V
    .locals 9
    .param p1, "dy"    # I

    .prologue
    .line 2634
    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 2635
    .local v1, "maxHeight":I
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2636
    .local v2, "minHeight":I
    sub-int v6, v1, v2

    int-to-float v0, v6

    .line 2637
    .local v0, "heightDiff":F
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v3, v6, p1

    .line 2638
    .local v3, "newHeight":I
    if-ge v3, v2, :cond_1

    .line 2639
    move v3, v2

    .line 2643
    :cond_0
    :goto_0
    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    .line 2644
    const v6, 0x3f4ccccd    # 0.8f

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v0

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 2645
    .local v4, "scale":F
    int-to-float v6, v1

    mul-float/2addr v6, v4

    float-to-int v5, v6

    .line 2646
    .local v5, "scaledHeight":I
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2647
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2648
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 2649
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2650
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2651
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setScaleX(F)V

    .line 2652
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setScaleY(F)V

    .line 2653
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2654
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationY(F)V

    .line 2655
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2656
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 2657
    return-void

    .line 2640
    .end local v4    # "scale":F
    .end local v5    # "scaledHeight":I
    :cond_1
    if-le v3, v1, :cond_0

    .line 2641
    move v3, v1

    goto :goto_0
.end method

.method private createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    .locals 11
    .param p1, "plainText"    # Ljava/lang/CharSequence;
    .param p2, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p3, "width"    # I
    .param p4, "parentBlock"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v4, 0x1

    .line 1394
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v0, :cond_1

    .line 1395
    :cond_0
    const/4 v0, 0x0

    .line 1491
    :goto_0
    return-object v0

    .line 1398
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getSelectedColor()I

    move-result v9

    .line 1399
    .local v9, "color":I
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 1400
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    .line 1401
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1403
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    .line 1404
    if-nez v9, :cond_4

    .line 1405
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    const v3, -0xa0704

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1412
    :cond_2
    :goto_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    .line 1413
    if-nez v9, :cond_6

    .line 1414
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    const v3, -0x141415

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1423
    :cond_3
    :goto_2
    if-eqz p1, :cond_8

    .line 1424
    move-object v1, p1

    .line 1428
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1429
    const/4 v0, 0x0

    goto :goto_0

    .line 1406
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_4
    if-ne v9, v4, :cond_5

    .line 1407
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    const v3, -0x1a2138

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1408
    :cond_5
    if-ne v9, v10, :cond_2

    .line 1409
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    const v3, -0xd9d9da

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1415
    :cond_6
    if-ne v9, v4, :cond_7

    .line 1416
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    const v3, -0x1a2138

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 1417
    :cond_7
    if-ne v9, v10, :cond_3

    .line 1418
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    const v3, -0xd9d9da

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 1426
    :cond_8
    invoke-direct {p0, p2, p2, p4}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1432
    :cond_9
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v0, :cond_10

    if-nez p2, :cond_10

    .line 1433
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$PageBlock;->author:Ljava/lang/String;

    if-ne v0, p1, :cond_c

    .line 1434
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_a

    .line 1435
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    .line 1436
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1438
    :cond_a
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1439
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    .line 1488
    .local v2, "paint":Landroid/text/TextPaint;
    :goto_4
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-nez v0, :cond_b

    if-eqz p2, :cond_1a

    if-eqz p4, :cond_1a

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, v0, :cond_1a

    .line 1489
    :cond_b
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_0

    .line 1441
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_c
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_d

    .line 1442
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    .line 1443
    if-nez v9, :cond_e

    .line 1444
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const v3, -0x706860

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1451
    :cond_d
    :goto_5
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1452
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    .restart local v2    # "paint":Landroid/text/TextPaint;
    goto :goto_4

    .line 1445
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_e
    if-ne v9, v4, :cond_f

    .line 1446
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const v3, -0xb2b4bb

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_5

    .line 1447
    :cond_f
    if-ne v9, v10, :cond_d

    .line 1448
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const v3, -0x99999a

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_5

    .line 1454
    :cond_10
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v0, :cond_13

    .line 1455
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_11

    .line 1456
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    .line 1457
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1459
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-nez v0, :cond_12

    .line 1460
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1464
    :goto_6
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1465
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    .restart local v2    # "paint":Landroid/text/TextPaint;
    goto/16 :goto_4

    .line 1462
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_12
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_6

    .line 1466
    :cond_13
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 1467
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_14

    .line 1468
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    .line 1469
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1472
    :cond_14
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    if-nez v0, :cond_15

    .line 1473
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v8, v0

    .line 1483
    .local v8, "additionalSize":I
    :goto_7
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1484
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    .line 1485
    .restart local v2    # "paint":Landroid/text/TextPaint;
    goto/16 :goto_4

    .line 1474
    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v8    # "additionalSize":I
    :cond_15
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    if-ne v0, v4, :cond_16

    .line 1475
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v8, v0

    .restart local v8    # "additionalSize":I
    goto :goto_7

    .line 1476
    .end local v8    # "additionalSize":I
    :cond_16
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_17

    .line 1477
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .restart local v8    # "additionalSize":I
    goto :goto_7

    .line 1478
    .end local v8    # "additionalSize":I
    :cond_17
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_18

    .line 1479
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .restart local v8    # "additionalSize":I
    goto :goto_7

    .line 1481
    .end local v8    # "additionalSize":I
    :cond_18
    const/4 v8, 0x0

    .restart local v8    # "additionalSize":I
    goto :goto_7

    .line 1486
    .end local v8    # "additionalSize":I
    :cond_19
    invoke-direct {p0, p2, p2, p4}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v2

    .restart local v2    # "paint":Landroid/text/TextPaint;
    goto/16 :goto_4

    .line 1491
    :cond_1a
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v6, v3

    const/4 v7, 0x0

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_0
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 8105
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 8320
    :cond_0
    :goto_0
    return-void

    .line 8112
    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    .line 8114
    .local v5, "aty":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    .line 8115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_2

    .line 8116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 8119
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v27, v31, v32

    .line 8120
    .local v27, "ts":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v28, v31, v32

    .line 8121
    .local v28, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v29, v31, v32

    .line 8123
    .local v29, "ty":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_3

    .line 8124
    move/from16 v5, v29

    .line 8126
    :cond_3
    move/from16 v8, v27

    .line 8127
    .local v8, "currentScale":F
    move/from16 v10, v29

    .line 8128
    .local v10, "currentTranslationY":F
    move/from16 v9, v28

    .line 8129
    .local v9, "currentTranslationX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 8166
    .end local v27    # "ts":F
    .end local v28    # "tx":F
    .end local v29    # "ty":F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_1a

    const/high16 v31, -0x40800000    # -1.0f

    cmpl-float v31, v5, v31

    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_1a

    .line 8167
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40800000    # 4.0f

    div-float v15, v31, v32

    .line 8168
    .local v15, "maxValue":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v31, v0

    const/high16 v32, 0x42fe0000    # 127.0f

    const/high16 v33, 0x437f0000    # 255.0f

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v35

    move/from16 v0, v35

    invoke-static {v0, v15}, Ljava/lang/Math;->min(FF)F

    move-result v35

    div-float v35, v35, v15

    sub-float v34, v34, v35

    mul-float v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    .line 8173
    .end local v15    # "maxValue":F
    :goto_2
    const/16 v24, 0x0

    .line 8175
    .local v24, "sideImage":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    .line 8176
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    move/from16 v31, v0

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    cmpl-float v31, v9, v31

    if-lez v31, :cond_1b

    .line 8177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    .line 8182
    :cond_5
    :goto_3
    if-eqz v24, :cond_1c

    const/16 v31, 0x1

    :goto_4
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    .line 8184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 8185
    move/from16 v25, v9

    .line 8186
    .local v25, "tranlateX":F
    const/16 v21, 0x0

    .line 8187
    .local v21, "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 8188
    .local v4, "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    move/from16 v31, v0

    cmpg-float v31, v25, v31

    if-gez v31, :cond_6

    .line 8189
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    move/from16 v32, v0

    sub-float v32, v32, v25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 8190
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v31, v31, v4

    const v32, 0x3e99999a    # 0.3f

    mul-float v21, v31, v32

    .line 8191
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v25, v0

    .line 8194
    :cond_6
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_7

    .line 8195
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8196
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8197
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v25

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8198
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v31, v31, v21

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8199
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 8200
    .local v7, "bitmapWidth":I
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 8202
    .local v6, "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 8203
    .local v22, "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 8204
    .local v23, "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_1d

    move/from16 v18, v23

    .line 8205
    .local v18, "scale":F
    :goto_5
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 8206
    .local v30, "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 8208
    .local v14, "height":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 8209
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 8210
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 8211
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 8214
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8215
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8216
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    neg-float v0, v10

    move/from16 v32, v0

    div-float v32, v32, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setScale(F)V

    .line 8218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setAlpha(F)V

    .line 8219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 8220
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 8223
    .end local v4    # "alpha":F
    .end local v21    # "scaleDiff":F
    .end local v25    # "tranlateX":F
    :cond_8
    move/from16 v26, v9

    .line 8224
    .local v26, "translateX":F
    const/16 v21, 0x0

    .line 8225
    .restart local v21    # "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 8226
    .restart local v4    # "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    move/from16 v31, v0

    cmpl-float v31, v26, v31

    if-lez v31, :cond_9

    .line 8227
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    move/from16 v32, v0

    sub-float v32, v26, v32

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 8228
    const v31, 0x3e99999a    # 0.3f

    mul-float v21, v4, v31

    .line 8229
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v4, v31, v4

    .line 8230
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    move/from16 v26, v0

    .line 8232
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v31

    if-nez v31, :cond_1e

    const/4 v11, 0x1

    .line 8233
    .local v11, "drawTextureView":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_f

    .line 8234
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8235
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8236
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8237
    sub-float v31, v8, v21

    sub-float v32, v8, v21

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 8240
    .restart local v7    # "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 8241
    .restart local v6    # "bitmapHeight":I
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 8242
    int-to-float v0, v7

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v19, v31, v32

    .line 8243
    .local v19, "scale1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v20, v31, v32

    .line 8244
    .local v20, "scale2":F
    sub-float v31, v19, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const v32, 0x3c23d70a    # 0.01f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_a

    .line 8245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v7

    .line 8246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v6

    .line 8250
    .end local v19    # "scale1":F
    .end local v20    # "scale2":F
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 8251
    .restart local v22    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 8252
    .restart local v23    # "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_1f

    move/from16 v18, v23

    .line 8253
    .restart local v18    # "scale":F
    :goto_7
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 8254
    .restart local v30    # "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 8256
    .restart local v14    # "height":I
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_c

    .line 8257
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 8258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    neg-int v0, v14

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 8259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 8261
    :cond_c
    if-eqz v11, :cond_e

    .line 8262
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-nez v31, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    .line 8263
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    .line 8264
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    .line 8265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlphaLastTime:J

    .line 8267
    :cond_d
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move/from16 v32, v0

    mul-float v32, v32, v4

    invoke-virtual/range {v31 .. v32}, Landroid/view/TextureView;->setAlpha(F)V

    .line 8269
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 8270
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpg-float v31, v31, v32

    if-gez v31, :cond_e

    .line 8271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 8272
    .local v16, "newUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlphaLastTime:J

    move-wide/from16 v32, v0

    sub-long v12, v16, v32

    .line 8273
    .local v12, "dt":J
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlphaLastTime:J

    .line 8274
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    long-to-float v0, v12

    move/from16 v32, v0

    const/high16 v33, 0x43960000    # 300.0f

    div-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    .line 8275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 8276
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_e

    .line 8277
    const/high16 v31, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    .line 8281
    .end local v12    # "dt":J
    .end local v16    # "newUpdateTime":J
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 8283
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_f
    if-nez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v31

    if-eqz v31, :cond_10

    .line 8284
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8285
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setScale(F)V

    .line 8287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setAlpha(F)V

    .line 8288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 8289
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 8292
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 8293
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_11

    .line 8294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8295
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8296
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    add-float v31, v31, v9

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8297
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 8298
    .restart local v7    # "bitmapWidth":I
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 8300
    .restart local v6    # "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 8301
    .restart local v22    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 8302
    .restart local v23    # "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_20

    move/from16 v18, v23

    .line 8303
    .restart local v18    # "scale":F
    :goto_8
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 8304
    .restart local v30    # "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 8306
    .restart local v14    # "height":I
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 8307
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 8308
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 8309
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 8312
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8313
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8314
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    neg-float v0, v10

    move/from16 v32, v0

    div-float v32, v32, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setScale(F)V

    .line 8316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setAlpha(F)V

    .line 8317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 8318
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 8131
    .end local v4    # "alpha":F
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    .end local v11    # "drawTextureView":Z
    .end local v21    # "scaleDiff":F
    .end local v24    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    .end local v26    # "translateX":F
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-eqz v31, :cond_13

    .line 8132
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 8133
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 8134
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 8135
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    .line 8136
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 8137
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    .line 8139
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_16

    .line 8140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    move-result v31

    if-eqz v31, :cond_16

    .line 8141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_14

    .line 8142
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getCurrX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 8144
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->minY:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_15

    .line 8145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 8147
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 8150
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    if-eqz v31, :cond_18

    .line 8151
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    .line 8152
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->setImageIndex(IZ)V

    .line 8156
    :cond_17
    :goto_9
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    .line 8158
    :cond_18
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 8159
    .restart local v8    # "currentScale":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 8160
    .restart local v10    # "currentTranslationY":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 8161
    .restart local v9    # "currentTranslationX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    move/from16 v31, v0

    if-nez v31, :cond_4

    .line 8162
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    goto/16 :goto_1

    .line 8153
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 8154
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->setImageIndex(IZ)V

    goto :goto_9

    .line 8170
    .restart local v8    # "currentScale":F
    .restart local v9    # "currentTranslationX":F
    .restart local v10    # "currentTranslationY":F
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v31, v0

    const/16 v32, 0xff

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 8178
    .restart local v24    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    move/from16 v31, v0

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    cmpg-float v31, v9, v31

    if-gez v31, :cond_5

    .line 8179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    goto/16 :goto_3

    .line 8182
    :cond_1c
    const/16 v31, 0x0

    goto/16 :goto_4

    .restart local v4    # "alpha":F
    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v21    # "scaleDiff":F
    .restart local v22    # "scaleX":F
    .restart local v23    # "scaleY":F
    .restart local v25    # "tranlateX":F
    :cond_1d
    move/from16 v18, v22

    .line 8204
    goto/16 :goto_5

    .line 8232
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v25    # "tranlateX":F
    .restart local v26    # "translateX":F
    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_6

    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v11    # "drawTextureView":Z
    .restart local v22    # "scaleX":F
    .restart local v23    # "scaleY":F
    :cond_1f
    move/from16 v18, v22

    .line 8252
    goto/16 :goto_7

    :cond_20
    move/from16 v18, v22

    .line 8302
    goto/16 :goto_8
.end method

.method private drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/StaticLayout;

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 1496
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    if-eq v0, p2, :cond_1

    .line 1513
    :cond_0
    :goto_0
    return-void

    .line 1499
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_2

    .line 1500
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    sget-object v1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1501
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->drawBlockSelection:Z

    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1505
    invoke-virtual {p2, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    .line 1506
    .local v6, "width":F
    invoke-virtual {p2, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v7

    .line 1511
    .local v7, "x":F
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float v1, v0, v7

    const/4 v2, 0x0

    add-float v0, v7, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1508
    .end local v6    # "width":F
    .end local v7    # "x":F
    :cond_3
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    int-to-float v6, v0

    .line 1509
    .restart local v6    # "width":F
    const/4 v7, 0x0

    .restart local v7    # "x":F
    goto :goto_1
.end method

.method private getContainerViewHeight()I
    .locals 1

    .prologue
    .line 7846
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->getHeight()I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth()I
    .locals 1

    .prologue
    .line 7842
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    return v0
.end method

.method private getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 1653
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 1665
    :cond_1
    :goto_0
    return-object v1

    .line 1656
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 1657
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    .line 1659
    :cond_3
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1660
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1661
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    .line 1659
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_4
    move-object v1, v2

    .line 1665
    goto :goto_0
.end method

.method private getFileLocation(I[I)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 9
    .param p1, "index"    # I
    .param p2, "size"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 7059
    if-ltz p1, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p1, v5, :cond_1

    .line 7085
    :cond_0
    :goto_0
    return-object v4

    .line 7062
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .line 7063
    .local v1, "media":Lorg/telegram/tgnet/TLObject;
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v5, :cond_4

    move-object v2, v1

    .line 7064
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 7065
    .local v2, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 7066
    .local v3, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v3, :cond_3

    .line 7067
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v4, p2, v7

    .line 7068
    aget v4, p2, v7

    if-nez v4, :cond_2

    .line 7069
    aput v8, p2, v7

    .line 7071
    :cond_2
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 7073
    :cond_3
    aput v8, p2, v7

    goto :goto_0

    .line 7075
    .end local v2    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v3    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_4
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 7076
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 7077
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v5, :cond_0

    .line 7078
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v4, p2, v7

    .line 7079
    aget v4, p2, v7

    if-nez v4, :cond_5

    .line 7080
    aput v8, p2, v7

    .line 7082
    :cond_5
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 7002
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 7003
    .local v0, "media":Lorg/telegram/tgnet/TLObject;
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_0

    .line 7004
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    .end local v0    # "media":Lorg/telegram/tgnet/TLObject;
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 7006
    .restart local v0    # "media":Lorg/telegram/tgnet/TLObject;
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getGrayTextColor()I
    .locals 1

    .prologue
    .line 1237
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getSelectedColor()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1244
    const v0, -0x99999a

    :goto_0
    return v0

    .line 1239
    :pswitch_0
    const v0, -0x7c736a

    goto :goto_0

    .line 1241
    :pswitch_1
    const v0, -0xb2b4bb

    goto :goto_0

    .line 1237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;
    .locals 6
    .param p1, "listView"    # Landroid/view/ViewGroup;
    .param p2, "pageBlock"    # Lorg/telegram/tgnet/TLRPC$PageBlock;
    .param p3, "coords"    # [I

    .prologue
    .line 8442
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 8443
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_5

    .line 8444
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 8445
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 8446
    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .line 8447
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$15100(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v5

    if-ne v5, p2, :cond_3

    .line 8448
    invoke-virtual {v4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8449
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$15200(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 8469
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v3

    .line 8451
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    instance-of v5, v4, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v5, :cond_2

    move-object v1, v4

    .line 8452
    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 8453
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$15300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v5

    if-ne v5, p2, :cond_3

    .line 8454
    invoke-virtual {v4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8455
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$15400(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    goto :goto_1

    .line 8457
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    if-eqz v5, :cond_4

    .line 8458
    check-cast v4, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$15500(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 8459
    .local v3, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    if-nez v3, :cond_0

    .line 8443
    .end local v3    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8462
    .restart local v4    # "view":Landroid/view/View;
    :cond_4
    instance-of v5, v4, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v5, :cond_3

    .line 8463
    check-cast v4, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$11600(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 8464
    .restart local v3    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    if-eqz v3, :cond_3

    goto :goto_1

    .line 8469
    .end local v3    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/ui/ArticleViewer;
    .locals 4

    .prologue
    .line 229
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    .line 230
    .local v0, "localInstance":Lorg/telegram/ui/ArticleViewer;
    if-nez v0, :cond_1

    .line 231
    const-class v3, Lorg/telegram/ui/ArticleViewer;

    monitor-enter v3

    .line 232
    :try_start_0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    .line 233
    if-nez v0, :cond_0

    .line 234
    new-instance v1, Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v1}, Lorg/telegram/ui/ArticleViewer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    .local v1, "localInstance":Lorg/telegram/ui/ArticleViewer;
    :try_start_1
    sput-object v1, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 236
    .end local v1    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 238
    :cond_1
    return-object v0

    .line 236
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    goto :goto_0
.end method

.method private getMedia(I)Lorg/telegram/tgnet/TLObject;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 7010
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 7019
    :cond_0
    :goto_0
    return-object v1

    .line 7013
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 7014
    .local v0, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 7015
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v1

    goto :goto_0

    .line 7016
    :cond_2
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 7017
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    goto :goto_0
.end method

.method private getMediaFile(I)Ljava/io/File;
    .locals 12
    .param p1, "index"    # I

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 7023
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    if-gez p1, :cond_1

    .line 7041
    :cond_0
    :goto_0
    return-object v4

    .line 7026
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 7027
    .local v0, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_2

    .line 7028
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    invoke-direct {p0, v6, v7}, Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v2

    .line 7029
    .local v2, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v2, :cond_0

    .line 7030
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 7031
    .local v3, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v3, :cond_0

    .line 7032
    invoke-static {v3, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    goto :goto_0

    .line 7035
    .end local v2    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v3    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_2
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    .line 7036
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    invoke-direct {p0, v6, v7}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 7037
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v1, :cond_0

    .line 7038
    invoke-static {v1, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    goto :goto_0
.end method

.method private getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 1637
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 1649
    :cond_1
    :goto_0
    return-object v1

    .line 1640
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 1641
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    .line 1643
    :cond_3
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1644
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1645
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    .line 1643
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    :cond_4
    move-object v1, v2

    .line 1649
    goto :goto_0
.end method

.method private getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    .locals 4
    .param p1, "pageBlock"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 8473
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    invoke-direct {p0, v2, p1, v3}, Lorg/telegram/ui/ArticleViewer;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 8474
    .local v0, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    if-nez v0, :cond_0

    .line 8475
    const/4 v1, 0x0

    .line 8485
    :goto_0
    return-object v1

    .line 8477
    :cond_0
    new-instance v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    invoke-direct {v1}, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;-><init>()V

    .line 8478
    .local v1, "object":Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewX:I

    .line 8479
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    .line 8480
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 8481
    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 8482
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 8483
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    .line 8484
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipTopAddition:I

    goto :goto_0
.end method

.method private getSelectedColor()I
    .locals 4

    .prologue
    .line 1823
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedColor:I

    .line 1824
    .local v0, "currentColor":I
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 1825
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1826
    .local v1, "hour":I
    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/16 v2, 0x18

    if-le v1, v2, :cond_1

    :cond_0
    if-ltz v1, :cond_2

    const/4 v2, 0x6

    if-gt v1, v2, :cond_2

    .line 1827
    :cond_1
    const/4 v0, 0x2

    .line 1830
    .end local v1    # "hour":I
    :cond_2
    return v0
.end method

.method private getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "parentRichText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p2, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p3, "parentBlock"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 1156
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v10, :cond_1

    .line 1157
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1203
    :cond_0
    :goto_0
    return-object v7

    .line 1158
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_1
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v10, :cond_2

    .line 1159
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 1160
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_2
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v10, :cond_3

    .line 1161
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 1162
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_3
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v10, :cond_4

    .line 1163
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 1164
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_4
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v10, :cond_5

    .line 1165
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 1166
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_5
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v10, :cond_8

    .line 1167
    new-instance v7, Landroid/text/SpannableStringBuilder;

    move-object/from16 v10, p2

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1168
    .local v7, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const-class v12, Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v7, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/MetricAffectingSpan;

    .line 1169
    .local v5, "innerSpans":[Landroid/text/style/MetricAffectingSpan;
    new-instance v11, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v5, :cond_6

    array-length v10, v5

    if-nez v10, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p3}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v10

    :goto_1
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v7, v11, v10, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 1171
    .end local v5    # "innerSpans":[Landroid/text/style/MetricAffectingSpan;
    .end local v7    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_8
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v10, :cond_b

    .line 1172
    new-instance v7, Landroid/text/SpannableStringBuilder;

    move-object/from16 v10, p2

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1173
    .restart local v7    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const-class v12, Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v7, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/MetricAffectingSpan;

    .line 1174
    .restart local v5    # "innerSpans":[Landroid/text/style/MetricAffectingSpan;
    new-instance v11, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v5, :cond_9

    array-length v10, v5

    if-nez v10, :cond_a

    :cond_9
    invoke-direct/range {p0 .. p3}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v10

    :goto_2
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v7, v11, v10, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto :goto_2

    .line 1176
    .end local v5    # "innerSpans":[Landroid/text/style/MetricAffectingSpan;
    .end local v7    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_b
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v10, :cond_c

    .line 1177
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 1178
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_c
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v10, :cond_d

    .line 1179
    const-string/jumbo v7, ""

    goto/16 :goto_0

    .line 1180
    :cond_d
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz v10, :cond_11

    .line 1181
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1182
    .restart local v7    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1183
    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 1184
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1185
    .local v4, "innerRichText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p3

    invoke-direct {p0, p1, v4, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1186
    .local v6, "innerText":Ljava/lang/CharSequence;
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v3

    .line 1187
    .local v3, "flags":I
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 1188
    .local v8, "startLength":I
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1189
    if-eqz v3, :cond_f

    instance-of v10, v6, Landroid/text/SpannableStringBuilder;

    if-nez v10, :cond_f

    .line 1190
    and-int/lit8 v10, v3, 0x8

    if-eqz v10, :cond_10

    .line 1191
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v9

    .line 1192
    .local v9, "url":Ljava/lang/String;
    if-nez v9, :cond_e

    .line 1193
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v9

    .line 1195
    :cond_e
    new-instance v10, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v4, v0}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v10, v8, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1183
    .end local v9    # "url":Ljava/lang/String;
    :cond_f
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1197
    :cond_10
    new-instance v10, Lorg/telegram/ui/Components/TextPaintSpan;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v4, v0}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/TextPaintSpan;-><init>(Landroid/text/TextPaint;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v10, v8, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 1203
    .end local v1    # "a":I
    .end local v2    # "count":I
    .end local v3    # "flags":I
    .end local v4    # "innerRichText":Lorg/telegram/tgnet/TLRPC$RichText;
    .end local v6    # "innerText":Ljava/lang/CharSequence;
    .end local v7    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "startLength":I
    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not supported "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private getTextColor()I
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getSelectedColor()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1232
    const v0, -0x666667

    :goto_0
    return v0

    .line 1229
    :pswitch_0
    const v0, -0xdededf

    goto :goto_0

    .line 1226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I
    .locals 1
    .param p1, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;

    .prologue
    .line 1135
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 1152
    :goto_0
    return v0

    .line 1137
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1139
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    .line 1140
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1141
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    .line 1142
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 1143
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    .line 1144
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 1145
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_5

    .line 1146
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 1147
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_6

    .line 1148
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 1149
    :cond_6
    if-eqz p1, :cond_7

    .line 1150
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    goto :goto_0

    .line 1152
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;
    .locals 8
    .param p1, "parentRichText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p2, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p3, "parentBlock"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 1249
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v2

    .line 1250
    .local v2, "flags":I
    const/4 v1, 0x0

    .line 1251
    .local v1, "currentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1252
    .local v5, "textSize":I
    const/high16 v4, -0x10000

    .line 1255
    .local v4, "textColor":I
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    if-nez v6, :cond_2

    .line 1256
    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v0, v6

    .line 1267
    .local v0, "additionalSize":I
    :goto_0
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v6, :cond_6

    .line 1268
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->captionTextPaints:Ljava/util/HashMap;

    .line 1269
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1270
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v4

    .line 1342
    :cond_0
    :goto_1
    if-nez v1, :cond_18

    .line 1343
    sget-object v6, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    if-nez v6, :cond_1

    .line 1344
    new-instance v6, Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v6, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    .line 1345
    sget-object v6, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    const/high16 v7, -0x10000

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 1347
    :cond_1
    sget-object v6, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1348
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    .line 1390
    :goto_2
    return-object v3

    .line 1257
    .end local v0    # "additionalSize":I
    :cond_2
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1258
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v0, v6

    .restart local v0    # "additionalSize":I
    goto :goto_0

    .line 1259
    .end local v0    # "additionalSize":I
    :cond_3
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 1260
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .restart local v0    # "additionalSize":I
    goto :goto_0

    .line 1261
    .end local v0    # "additionalSize":I
    :cond_4
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 1262
    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .restart local v0    # "additionalSize":I
    goto :goto_0

    .line 1264
    .end local v0    # "additionalSize":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "additionalSize":I
    goto :goto_0

    .line 1271
    :cond_6
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v6, :cond_7

    .line 1272
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Ljava/util/HashMap;

    .line 1273
    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1274
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    goto :goto_1

    .line 1275
    :cond_7
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v6, :cond_8

    .line 1276
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Ljava/util/HashMap;

    .line 1277
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1278
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v4

    goto :goto_1

    .line 1279
    :cond_8
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v6, :cond_9

    .line 1280
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Ljava/util/HashMap;

    .line 1281
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1282
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v4

    goto :goto_1

    .line 1283
    :cond_9
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v6, :cond_a

    .line 1284
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Ljava/util/HashMap;

    .line 1285
    const/high16 v6, 0x41a80000    # 21.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1286
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1287
    :cond_a
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v6, :cond_b

    .line 1288
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Ljava/util/HashMap;

    .line 1289
    const/high16 v6, 0x41a80000    # 21.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1290
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1291
    :cond_b
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v6, :cond_c

    .line 1292
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Ljava/util/HashMap;

    .line 1293
    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1294
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1295
    :cond_c
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-nez v6, :cond_d

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v6, :cond_f

    .line 1296
    :cond_d
    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v6, p1, :cond_e

    .line 1297
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Ljava/util/HashMap;

    .line 1298
    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1299
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1300
    :cond_e
    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v6, p1, :cond_0

    .line 1301
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->subquoteTextPaints:Ljava/util/HashMap;

    .line 1302
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1303
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1305
    :cond_f
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v6, :cond_10

    .line 1306
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Ljava/util/HashMap;

    .line 1307
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1308
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1309
    :cond_10
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v6, :cond_12

    .line 1310
    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v6, p1, :cond_11

    .line 1311
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Ljava/util/HashMap;

    .line 1312
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1313
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1315
    :cond_11
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Ljava/util/HashMap;

    .line 1316
    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1317
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1319
    :cond_12
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v6, :cond_13

    .line 1320
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Ljava/util/HashMap;

    .line 1321
    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1322
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1323
    :cond_13
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v6, :cond_14

    .line 1324
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->embedTextPaints:Ljava/util/HashMap;

    .line 1325
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1326
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1327
    :cond_14
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v6, :cond_15

    .line 1328
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->slideshowTextPaints:Ljava/util/HashMap;

    .line 1329
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1330
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1331
    :cond_15
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v6, :cond_16

    .line 1332
    if-eqz p2, :cond_0

    .line 1333
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Ljava/util/HashMap;

    .line 1334
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1335
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1337
    :cond_16
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-nez v6, :cond_17

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz v6, :cond_0

    .line 1338
    :cond_17
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->videoTextPaints:Ljava/util/HashMap;

    .line 1339
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1340
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    goto/16 :goto_1

    .line 1350
    :cond_18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    .line 1351
    .local v3, "paint":Landroid/text/TextPaint;
    if-nez v3, :cond_1d

    .line 1352
    new-instance v3, Landroid/text/TextPaint;

    .end local v3    # "paint":Landroid/text/TextPaint;
    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/text/TextPaint;-><init>(I)V

    .line 1353
    .restart local v3    # "paint":Landroid/text/TextPaint;
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_1e

    .line 1354
    const-string/jumbo v6, "fonts/rmono.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1376
    :cond_19
    :goto_3
    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_1a

    .line 1377
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x10

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setFlags(I)V

    .line 1379
    :cond_1a
    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_1b

    .line 1380
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setFlags(I)V

    .line 1382
    :cond_1b
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_1c

    .line 1383
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setFlags(I)V

    .line 1384
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    .line 1386
    :cond_1c
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1387
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    :cond_1d
    add-int v6, v5, v0

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/16 :goto_2

    .line 1356
    :cond_1e
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1f

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-nez v6, :cond_1f

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez v6, :cond_1f

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-nez v6, :cond_1f

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v6, :cond_23

    .line 1357
    :cond_1f
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_20

    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_20

    .line 1358
    const-string/jumbo v6, "serif"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3

    .line 1359
    :cond_20
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_21

    .line 1360
    const-string/jumbo v6, "serif"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3

    .line 1361
    :cond_21
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_22

    .line 1362
    const-string/jumbo v6, "serif"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_3

    .line 1364
    :cond_22
    const-string/jumbo v6, "serif"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_3

    .line 1367
    :cond_23
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_24

    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_24

    .line 1368
    const-string/jumbo v6, "fonts/rmediumitalic.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_3

    .line 1369
    :cond_24
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_25

    .line 1370
    const-string/jumbo v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_3

    .line 1371
    :cond_25
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_19

    .line 1372
    const-string/jumbo v6, "fonts/ritalic.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_3
.end method

.method private getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;
    .locals 1
    .param p1, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;

    .prologue
    .line 1207
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    .line 1208
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    :goto_0
    return-object v0

    .line 1209
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    .line 1210
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1211
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    .line 1212
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1213
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    .line 1214
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1215
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    .line 1216
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1217
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_5

    .line 1218
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->email:Ljava/lang/String;

    goto :goto_0

    .line 1219
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_6

    .line 1220
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->url:Ljava/lang/String;

    goto :goto_0

    .line 1222
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goToNext()V
    .locals 5

    .prologue
    .line 8049
    const/4 v0, 0x0

    .line 8050
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 8051
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    mul-float v0, v1, v2

    .line 8053
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    .line 8054
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    .line 8055
    return-void
.end method

.method private goToPrev()V
    .locals 5

    .prologue
    .line 8058
    const/4 v0, 0x0

    .line 8059
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 8060
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    mul-float v0, v1, v2

    .line 8062
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    .line 8063
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    .line 8064
    return-void
.end method

.method private hideActionBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2872
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2873
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v6

    .line 2874
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v6

    .line 2875
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v4, "alpha"

    new-array v5, v5, [F

    aput v7, v5, v6

    .line 2876
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2873
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2877
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2878
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2879
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2880
    return-void
.end method

.method private isMediaVideo(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7055
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 6
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 7045
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 7046
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 7047
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v0, :cond_0

    .line 7048
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    .line 7051
    .end local v0    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private joinChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3
    .param p1, "cell"    # Lorg/telegram/ui/ArticleViewer$BlockChannelCell;
    .param p2, "channel"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 3268
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;-><init>()V

    .line 3269
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 3270
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ArticleViewer$37;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/telegram/ui/ArticleViewer$37;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3313
    return-void
.end method

.method private loadChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3
    .param p1, "cell"    # Lorg/telegram/ui/ArticleViewer$BlockChannelCell;
    .param p2, "channel"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 3227
    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->loadingChannel:Z

    if-nez v1, :cond_0

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3265
    :cond_0
    :goto_0
    return-void

    .line 3230
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->loadingChannel:Z

    .line 3231
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 3232
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 3233
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ArticleViewer$36;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ArticleViewer$36;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private onActionClick(Z)V
    .locals 7
    .param p1, "download"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 8323
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    .line 8324
    .local v2, "media":Lorg/telegram/tgnet/TLObject;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    if-nez v3, :cond_1

    .line 8346
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v2

    .line 8327
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 8328
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v1, 0x0

    .line 8329
    .local v1, "file":Ljava/io/File;
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v3, :cond_2

    .line 8330
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v1

    .line 8331
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8332
    const/4 v1, 0x0

    .line 8335
    :cond_2
    if-nez v1, :cond_4

    .line 8336
    if-eqz p1, :cond_0

    .line 8337
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8338
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    goto :goto_0

    .line 8340
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    .line 8344
    :cond_4
    invoke-direct {p0, v1, v5}, Lorg/telegram/ui/ArticleViewer;->preparePlayer(Ljava/io/File;Z)V

    goto :goto_0
.end method

.method private onClosed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3197
    iput-boolean v5, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    .line 3198
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 3199
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3200
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3201
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 3203
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3207
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 3208
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .line 3209
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->destroyWebView(Z)V

    .line 3207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3204
    .end local v0    # "a":I
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    :catch_0
    move-exception v2

    .line 3205
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3211
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/ArticleViewer$35;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ArticleViewer$35;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 3224
    return-void
.end method

.method private onPhotoClosed(Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 6
    .param p1, "object"    # Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 7790
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    .line 7791
    iput-boolean v5, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    .line 7792
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 7793
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 7794
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 7795
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 7796
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 7798
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 7799
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 7800
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v1, v1, v0

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 7798
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7803
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7804
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7805
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7806
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$51;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$51;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->post(Ljava/lang/Runnable;)Z

    .line 7812
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    .line 7813
    if-eqz p1, :cond_3

    .line 7814
    iget-object v1, p1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 7816
    :cond_3
    return-void
.end method

.method private onPhotoShow(ILorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "object"    # Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 7089
    iput v5, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    .line 7090
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aput-object v2, v1, v4

    .line 7091
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aput-object v2, v1, v6

    .line 7092
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 7093
    if-eqz p2, :cond_1

    iget-object v1, p2, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 7094
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 7095
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 7096
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 7097
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7098
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7100
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v7, :cond_2

    .line 7101
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 7102
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 7100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "a":I
    :cond_1
    move-object v1, v2

    .line 7093
    goto :goto_0

    .line 7106
    .restart local v0    # "a":I
    :cond_2
    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/ArticleViewer;->setImageIndex(IZ)V

    .line 7108
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7109
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->onActionClick(Z)V

    .line 7111
    :cond_3
    return-void
.end method

.method private onSharePressed()V
    .locals 7

    .prologue
    .line 6740
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-nez v4, :cond_1

    .line 6764
    :cond_0
    :goto_0
    return-void

    .line 6744
    :cond_1
    :try_start_0
    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v2

    .line 6745
    .local v2, "f":Ljava/io/File;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6746
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6747
    .local v3, "intent":Landroid/content/Intent;
    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6748
    const-string/jumbo v4, "video/mp4"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 6752
    :goto_1
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6753
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v5, "ShareFile"

    const v6, 0x7f070673

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6761
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 6762
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6750
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 6755
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6756
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "AppName"

    const v5, 0x7f07007d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6757
    const-string/jumbo v4, "OK"

    const v5, 0x7f0704f5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6758
    const-string/jumbo v4, "PleaseDownload"

    const v5, 0x7f07058c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6759
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private open(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 20
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "first"    # Z

    .prologue
    .line 2701
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    if-eqz v13, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 2702
    :cond_1
    const/4 v13, 0x0

    .line 2868
    :goto_0
    return v13

    .line 2705
    :cond_2
    if-eqz p2, :cond_3

    .line 2706
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 2707
    .local v8, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 2708
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_pagePart;

    if-eqz v13, :cond_9

    .line 2709
    const/4 v13, 0x0

    iput v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 2713
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/ArticleViewer$24;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/ArticleViewer$24;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v13, v8, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2743
    .end local v8    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 2744
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    .line 2745
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 2746
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2747
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2748
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 2749
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    .line 2750
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ArticleViewer$WindowView;->setInnerTranslationX(F)V

    .line 2752
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 2753
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2754
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2757
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2758
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 2759
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2760
    const/high16 v13, 0x42600000    # 56.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    neg-int v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->checkScroll(I)V

    .line 2762
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 2763
    .local v10, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 2765
    .local v11, "webPageUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2766
    .local v3, "anchor":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_5

    .line 2767
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 2768
    .local v6, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v13, :cond_a

    .line 2770
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v14, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v15, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 2771
    .local v9, "url":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2772
    :cond_4
    const/16 v13, 0x23

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .local v7, "index":I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_5

    .line 2773
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2782
    .end local v6    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v7    # "index":I
    .end local v9    # "url":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V

    .line 2784
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    .line 2785
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-nez v13, :cond_b

    .line 2786
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v14, "window"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 2787
    .local v12, "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    if-eqz v13, :cond_6

    .line 2789
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v12, v13}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2795
    :cond_6
    :goto_3
    :try_start_2
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v13, v14, :cond_7

    .line 2796
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v14, -0x7ffeff00

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2800
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v14, v14, 0x408

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2801
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ArticleViewer$WindowView;->setFocusable(Z)V

    .line 2802
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2803
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v12, v13, v14}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2813
    :goto_4
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    .line 2814
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 2815
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ArticleViewer$WindowView;->setAlpha(F)V

    .line 2816
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2818
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2819
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 2820
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    .line 2821
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v16, "translationX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x42600000    # 56.0f

    .line 2822
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    .line 2819
    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2825
    new-instance v13, Lorg/telegram/ui/ArticleViewer$25;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/ArticleViewer$25;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 2838
    const-wide/16 v14, 0x96

    invoke-virtual {v4, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2839
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2840
    new-instance v13, Lorg/telegram/ui/ArticleViewer$26;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/ArticleViewer$26;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 2856
    new-instance v13, Lorg/telegram/ui/ArticleViewer$27;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lorg/telegram/ui/ArticleViewer$27;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2864
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x12

    if-lt v13, v14, :cond_8

    .line 2865
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2867
    :cond_8
    const/16 v13, 0xc8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->showActionBar(I)V

    .line 2868
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2711
    .end local v2    # "a":I
    .end local v3    # "anchor":Ljava/lang/String;
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v10    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .end local v11    # "webPageUrl":Ljava/lang/String;
    .end local v12    # "wm":Landroid/view/WindowManager;
    .restart local v8    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    :cond_9
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->hash:I

    iput v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    goto/16 :goto_1

    .line 2777
    .end local v8    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    .restart local v2    # "a":I
    .restart local v3    # "anchor":Ljava/lang/String;
    .restart local v6    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v10    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .restart local v11    # "webPageUrl":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2778
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2766
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 2804
    .end local v6    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v12    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v5

    .line 2805
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2806
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2809
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "wm":Landroid/view/WindowManager;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v14, v14, -0x11

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2810
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v14, "window"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 2811
    .restart local v12    # "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v12, v13, v14}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 2790
    :catch_2
    move-exception v13

    goto/16 :goto_3

    .line 2819
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2820
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "wid"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2660
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 2668
    :cond_0
    :goto_0
    return-void

    .line 2663
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2664
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "user_id"

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2665
    const-string/jumbo v1, "botUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "webpage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 2667
    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_0
.end method

.method private preparePlayer(Ljava/io/File;Z)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "playWhenReady"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x4

    const-wide/16 v10, 0x3c

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 6799
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 6913
    :goto_0
    return-void

    .line 6802
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    .line 6803
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    if-nez v2, :cond_1

    .line 6804
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 6805
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 6806
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v5, v5, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v8, v4}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6808
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    .line 6809
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v8}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 6810
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-static {v5, v5, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6812
    :cond_1
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    .line 6813
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    .line 6814
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setAlpha(F)V

    .line 6815
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v3, 0x7f02011a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6816
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v2, :cond_3

    .line 6817
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 6818
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 6819
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$40;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$40;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 6899
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_4

    .line 6900
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    .line 6901
    .local v0, "duration":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 6902
    const-wide/16 v0, 0x0

    .line 6907
    :cond_2
    :goto_1
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 6908
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string/jumbo v3, "%02d:%02d / %02d:%02d"

    new-array v4, v6, [Ljava/lang/Object;

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    rem-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    rem-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 6910
    .end local v0    # "duration":J
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 6911
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6912
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    goto/16 :goto_0

    .line 6905
    :cond_4
    const-wide/16 v0, 0x0

    .restart local v0    # "duration":J
    goto :goto_1
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 7850
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v9, :cond_0

    iget-wide v10, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    .line 7851
    :cond_0
    const/4 v9, 0x0

    .line 8028
    :goto_0
    return v9

    .line 7854
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    if-eqz v9, :cond_2

    .line 7855
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    .line 7856
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 7857
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    .line 7858
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->checkMinMax(Z)V

    .line 7859
    const/4 v9, 0x1

    goto :goto_0

    .line 7862
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_7

    .line 7863
    :cond_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    .line 7864
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_4

    .line 7865
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 7867
    :cond_4
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    if-nez v9, :cond_5

    .line 7868
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    if-eqz v9, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 7869
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartDistance:F

    .line 7870
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    .line 7871
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    .line 7872
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    .line 7873
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    .line 7874
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    .line 7875
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    .line 7876
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 7877
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_5

    .line 7878
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 8028
    :cond_5
    :goto_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 7880
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 7881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    .line 7882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    .line 7883
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    .line 7884
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    .line 7885
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_5

    .line 7886
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 7890
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1b

    .line 7891
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    if-eqz v9, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-nez v9, :cond_8

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    if-nez v9, :cond_8

    .line 7892
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    .line 7893
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartDistance:F

    div-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    mul-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 7894
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 7895
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 7896
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 7897
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 7898
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 7899
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_9

    .line 7900
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7902
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 7903
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 7904
    .local v3, "dy":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_a

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_b

    .line 7905
    :cond_a
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    .line 7907
    :cond_b
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-nez v9, :cond_d

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_d

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_d

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v3, v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_d

    .line 7908
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    .line 7909
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 7910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    .line 7911
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    if-eqz v9, :cond_c

    .line 7912
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/ArticleViewer;->toggleActionBar(ZZ)V

    .line 7914
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 7915
    :cond_d
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-eqz v9, :cond_e

    .line 7916
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 7917
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 7918
    :cond_e
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    if-nez v9, :cond_1a

    iget-wide v10, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_1a

    .line 7919
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float v4, v9, v10

    .line 7920
    .local v4, "moveDx":F
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v5, v9, v10

    .line 7921
    .local v5, "moveDy":F
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    if-nez v9, :cond_10

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_10

    :cond_f
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    .line 7922
    :cond_10
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    if-nez v9, :cond_11

    .line 7923
    const/4 v4, 0x0

    .line 7924
    const/4 v5, 0x0

    .line 7925
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 7926
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    .line 7929
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    .line 7930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    .line 7931
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 7932
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_12

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_12
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_14

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-nez v9, :cond_14

    .line 7933
    :cond_13
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v4, v9

    .line 7935
    :cond_14
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_18

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_18

    .line 7936
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_17

    .line 7937
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 7938
    const/4 v5, 0x0

    .line 7949
    :cond_15
    :goto_2
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    sub-float/2addr v9, v4

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 7950
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_16

    .line 7951
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v9, v5

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 7954
    :cond_16
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 7939
    :cond_17
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_15

    .line 7940
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 7941
    const/4 v5, 0x0

    goto :goto_2

    .line 7944
    :cond_18
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_19

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_15

    .line 7945
    :cond_19
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v5, v9

    goto :goto_2

    .line 7957
    .end local v4    # "moveDx":F
    .end local v5    # "moveDy":F
    :cond_1a
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    .line 7958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    .line 7959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    goto/16 :goto_1

    .line 7962
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    .line 7963
    :cond_1c
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    if-eqz v9, :cond_23

    .line 7964
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    .line 7965
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1d

    .line 7966
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 7967
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    .line 7986
    :goto_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    goto/16 :goto_1

    .line 7968
    :cond_1d
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_22

    .line 7969
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v0, v9, v10

    .line 7970
    .local v0, "atx":F
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v1, v9, v10

    .line 7971
    .local v1, "aty":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 7972
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v9, v0, v9

    if-gez v9, :cond_20

    .line 7973
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    .line 7977
    :cond_1e
    :goto_4
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_21

    .line 7978
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    .line 7982
    :cond_1f
    :goto_5
    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x1

    invoke-direct {p0, v9, v0, v1, v10}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto :goto_3

    .line 7974
    :cond_20
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v9, v0, v9

    if-lez v9, :cond_1e

    .line 7975
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_4

    .line 7979
    :cond_21
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v9, v1, v9

    if-lez v9, :cond_1f

    .line 7980
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_5

    .line 7984
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_22
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->checkMinMax(Z)V

    goto :goto_3

    .line 7987
    :cond_23
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-eqz v9, :cond_25

    .line 7988
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40c00000    # 6.0f

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_24

    .line 7989
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    .line 7993
    :goto_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    goto/16 :goto_1

    .line 7991
    :cond_24
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto :goto_6

    .line 7994
    :cond_25
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    if-eqz v9, :cond_5

    .line 7995
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 7996
    .local v6, "moveToX":F
    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 7997
    .local v7, "moveToY":F
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 7998
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 7999
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    .line 8000
    const/4 v8, 0x0

    .line 8001
    .local v8, "velocity":F
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_26

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_26

    .line 8002
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 8003
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 8006
    :cond_26
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_27

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_28

    :cond_27
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 8007
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->goToNext()V

    .line 8008
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 8010
    :cond_28
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_29

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_2a

    :cond_29
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 8011
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->goToPrev()V

    .line 8012
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 8015
    :cond_2a
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2d

    .line 8016
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    .line 8020
    :cond_2b
    :goto_7
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2e

    .line 8021
    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    .line 8025
    :cond_2c
    :goto_8
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v7, v10}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto/16 :goto_1

    .line 8017
    :cond_2d
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2b

    .line 8018
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_7

    .line 8022
    :cond_2e
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2c

    .line 8023
    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_8
.end method

.method private releasePlayer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6916
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_0

    .line 6917
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 6918
    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 6921
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6925
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v1, :cond_1

    .line 6926
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 6927
    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 6929
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    .line 6930
    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    .line 6932
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    if-eqz v1, :cond_3

    .line 6933
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    .line 6934
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v2, 0x7f02011a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6935
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6937
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6938
    return-void

    .line 6922
    :catch_0
    move-exception v0

    .line 6923
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private removeLastPageFromStack()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1066
    const/4 v0, 0x0

    .line 1071
    :goto_0
    return v0

    .line 1068
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1070
    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Z)V

    move v0, v1

    .line 1071
    goto :goto_0
.end method

.method private saveCurrentPagePosition()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 3086
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v6, :cond_1

    .line 3102
    :cond_0
    :goto_0
    return-void

    .line 3089
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 3090
    .local v3, "position":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 3092
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 3093
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3094
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3098
    .local v2, "offset":I
    :goto_1
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "articles"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3099
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "article"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3100
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "o"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "r"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 3096
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "offset":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "offset":I
    goto :goto_1
.end method

.method private setCurrentCaption(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "caption"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 7271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7272
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    .line 7273
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    .line 7274
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    .line 7275
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 7276
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7277
    .local v0, "str":Ljava/lang/CharSequence;
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7278
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7279
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7280
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 7281
    new-instance v1, Lorg/telegram/ui/ArticleViewer$42;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$42;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7294
    .end local v0    # "str":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 7280
    .restart local v0    # "str":Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 7290
    .end local v0    # "str":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7291
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7292
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setImageIndex(IZ)V
    .locals 19
    .param p1, "index"    # I
    .param p2, "init"    # Z

    .prologue
    .line 7122
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_1

    .line 7268
    :cond_0
    :goto_0
    return-void

    .line 7125
    :cond_1
    if-nez p2, :cond_2

    .line 7126
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 7128
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ArticleViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 7129
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v14, 0x1

    add-int/lit8 v15, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/ui/ArticleViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 7130
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v14, 0x2

    add-int/lit8 v15, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/ui/ArticleViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 7132
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    .line 7133
    .local v9, "prevIndex":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    .line 7134
    const/4 v7, 0x0

    .line 7135
    .local v7, "isVideo":Z
    const/4 v10, 0x0

    .line 7137
    .local v10, "sameImage":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 7138
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-ltz v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v13, v14, :cond_4

    .line 7139
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    goto :goto_0

    .line 7142
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 7143
    .local v8, "newMedia":Lorg/telegram/tgnet/TLRPC$PageBlock;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-ne v13, v8, :cond_c

    const/4 v10, 0x1

    .line 7144
    :goto_1
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 7145
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v7

    .line 7146
    if-eqz v7, :cond_5

    .line 7147
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 7149
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 7150
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v13, :cond_d

    .line 7151
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 7152
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 7153
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v14, "AttachGif"

    const v15, 0x7f0700ac

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 7169
    .end local v8    # "newMedia":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    .line 7170
    .local v5, "count":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_3
    if-ge v2, v5, :cond_7

    .line 7171
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7172
    .local v4, "child":Landroid/view/View;
    instance-of v13, v4, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v13, :cond_10

    move-object v3, v4

    .line 7173
    check-cast v3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .line 7174
    .local v3, "cell":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$11300(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 7175
    .local v6, "idx":I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_10

    .line 7176
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$11600(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/support/v4/view/ViewPager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v6, v14}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 7182
    .end local v3    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "idx":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    if-eqz v13, :cond_8

    .line 7183
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v13, :cond_11

    .line 7184
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    iget-object v13, v13, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 7189
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    .line 7190
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    if-eqz v13, :cond_9

    .line 7191
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v13, :cond_12

    .line 7192
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    iget-object v13, v13, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 7198
    :cond_9
    :goto_5
    if-nez v10, :cond_b

    .line 7199
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    .line 7200
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 7201
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 7202
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 7203
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    .line 7204
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    .line 7205
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    .line 7206
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    .line 7207
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 7208
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v13, :cond_a

    .line 7209
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 7211
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    .line 7213
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchStartDistance:F

    .line 7214
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    .line 7215
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    .line 7216
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    .line 7217
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    .line 7218
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    .line 7219
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    .line 7220
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    .line 7221
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    .line 7222
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 7223
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    .line 7224
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    .line 7225
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    .line 7226
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    .line 7227
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    .line 7228
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    if-eqz v13, :cond_13

    if-nez v7, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->access$13800(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I

    move-result v13

    if-eqz v13, :cond_13

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    .line 7229
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 7232
    :cond_b
    const/4 v13, -0x1

    if-ne v9, v13, :cond_14

    .line 7233
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->setImages()V

    .line 7235
    const/4 v2, 0x0

    :goto_7
    const/4 v13, 0x3

    if-ge v2, v13, :cond_0

    .line 7236
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 7235
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 7143
    .end local v2    # "a":I
    .end local v5    # "count":I
    .restart local v8    # "newMedia":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 7155
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 7156
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    .line 7157
    if-eqz v7, :cond_e

    .line 7158
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v14, "AttachVideo"

    const v15, 0x7f0700ba

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 7165
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_2

    .line 7160
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v14, "AttachPhoto"

    const v15, 0x7f0700b3

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 7163
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v14, "Of"

    const v15, 0x7f0704f6

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 7170
    .end local v8    # "newMedia":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .restart local v2    # "a":I
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "count":I
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 7186
    .end local v4    # "child":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    goto/16 :goto_4

    .line 7194
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    goto/16 :goto_5

    .line 7228
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 7239
    :cond_14
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 7240
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-le v9, v13, :cond_15

    .line 7241
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 7242
    .local v11, "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 7243
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 7244
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 7246
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x0

    aget-object v12, v13, v14

    .line 7247
    .local v12, "tempProgress":Lorg/telegram/ui/ArticleViewer$RadialProgressView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    .line 7248
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x2

    aput-object v12, v13, v14

    .line 7249
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 7251
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 7252
    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    goto/16 :goto_0

    .line 7253
    .end local v11    # "temp":Lorg/telegram/messenger/ImageReceiver;
    .end local v12    # "tempProgress":Lorg/telegram/ui/ArticleViewer$RadialProgressView;
    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-ge v9, v13, :cond_0

    .line 7254
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 7255
    .restart local v11    # "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 7256
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 7257
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 7259
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x0

    aget-object v12, v13, v14

    .line 7260
    .restart local v12    # "tempProgress":Lorg/telegram/ui/ArticleViewer$RadialProgressView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    .line 7261
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x1

    aput-object v12, v13, v14

    .line 7262
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 7264
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 7265
    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    goto/16 :goto_0
.end method

.method private setImages()V
    .locals 2

    .prologue
    .line 7114
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v0, :cond_0

    .line 7115
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 7116
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 7117
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 7119
    :cond_0
    return-void
.end method

.method private setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 20
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "index"    # I

    .prologue
    .line 7337
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 7339
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 7340
    .local v18, "size":[I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->getFileLocation(I[I)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v4

    .line 7342
    .local v4, "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v4, :cond_a

    .line 7343
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v15

    .line 7344
    .local v15, "media":Lorg/telegram/tgnet/TLObject;
    instance-of v3, v15, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_5

    move-object/from16 v16, v15

    .line 7345
    check-cast v16, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 7346
    .local v16, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    const/16 v17, 0x0

    .line 7347
    .local v17, "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 7348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 7350
    :cond_0
    const/4 v3, 0x0

    aget v3, v18, v3

    if-nez v3, :cond_1

    .line 7351
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v18, v3

    .line 7353
    :cond_1
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v5, 0x50

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v19

    .line 7354
    .local v19, "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v17, :cond_3

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v7, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_1
    const-string/jumbo v9, "b"

    const/4 v3, 0x0

    aget v10, v18, v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;I)V

    .line 7378
    .end local v15    # "media":Lorg/telegram/tgnet/TLObject;
    .end local v16    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v17    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v19    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_2
    :goto_2
    return-void

    .line 7354
    .restart local v15    # "media":Lorg/telegram/tgnet/TLObject;
    .restart local v16    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .restart local v17    # "placeHolder":Landroid/graphics/Bitmap;
    .restart local v19    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 7355
    .end local v16    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v17    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v19    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 7356
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-nez v3, :cond_8

    .line 7357
    const/16 v17, 0x0

    .line 7358
    .restart local v17    # "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 7359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 7361
    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v17, :cond_7

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v9, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_3
    const-string/jumbo v11, "b"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p1

    move-object v10, v4

    invoke-virtual/range {v5 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 7363
    .end local v17    # "placeHolder":Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020211

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 7365
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_2

    .line 7366
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 7367
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    goto :goto_2

    .line 7372
    .end local v15    # "media":Lorg/telegram/tgnet/TLObject;
    :cond_a
    const/4 v3, 0x0

    aget v3, v18, v3

    if-nez v3, :cond_b

    .line 7373
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 7375
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020211

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method private setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V
    .locals 3
    .param p1, "parentRichText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p2, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;

    .prologue
    .line 922
    if-nez p2, :cond_1

    .line 946
    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_0
    :goto_0
    return-void

    .line 925
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_1
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 926
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 927
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 928
    :cond_2
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v2, :cond_3

    move-object v2, p2

    .line 929
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 930
    :cond_3
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v2, :cond_4

    move-object v2, p2

    .line 931
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 932
    :cond_4
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v2, :cond_5

    move-object v2, p2

    .line 933
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 934
    :cond_5
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v2, :cond_6

    .line 935
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 936
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_6
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v2, :cond_7

    move-object v2, p2

    .line 937
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 938
    :cond_7
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v2, :cond_8

    move-object v2, p2

    .line 939
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 940
    :cond_8
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz v2, :cond_0

    .line 941
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 942
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 943
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setScaleToFill()V
    .locals 9

    .prologue
    .line 6767
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    int-to-float v1, v7

    .line 6768
    .local v1, "bitmapWidth":F
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v7

    int-to-float v3, v7

    .line 6769
    .local v3, "containerWidth":F
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v7

    int-to-float v0, v7

    .line 6770
    .local v0, "bitmapHeight":F
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v7

    int-to-float v2, v7

    .line 6771
    .local v2, "containerHeight":F
    div-float v7, v2, v0

    div-float v8, v3, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 6772
    .local v5, "scaleFit":F
    mul-float v7, v1, v5

    float-to-int v7, v7

    int-to-float v6, v7

    .line 6773
    .local v6, "width":F
    mul-float v7, v0, v5

    float-to-int v7, v7

    int-to-float v4, v7

    .line 6774
    .local v4, "height":F
    div-float v7, v3, v6

    div-float v8, v2, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 6775
    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v7}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 6776
    return-void
.end method

.method private showActionBar(I)V
    .locals 8
    .param p1, "delay"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2883
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2884
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v6

    .line 2885
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v6

    .line 2886
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v4, "alpha"

    new-array v5, v5, [F

    aput v7, v5, v6

    .line 2887
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2884
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2888
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2889
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2890
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2891
    return-void
.end method

.method private showNightModeHint()V
    .locals 13

    .prologue
    const/16 v5, 0x38

    const/4 v12, 0x0

    const/4 v0, -0x1

    const/4 v4, -0x2

    const/4 v11, 0x1

    .line 2587
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->nightModeHintView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z

    if-nez v1, :cond_1

    .line 2625
    :cond_0
    :goto_0
    return-void

    .line 2590
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->nightModeHintView:Landroid/widget/FrameLayout;

    .line 2591
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->nightModeHintView:Landroid/widget/FrameLayout;

    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2592
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->nightModeHintView:Landroid/widget/FrameLayout;

    const/16 v3, 0x53

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2594
    new-instance v8, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2595
    .local v8, "nightModeImageView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2596
    const v1, 0x7f020173

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2597
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->nightModeHintView:Landroid/widget/FrameLayout;

    const/16 v2, 0x13

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2599
    new-instance v9, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2600
    .local v9, "textView":Landroid/widget/TextView;
    const-string/jumbo v1, "InstantViewNightMode"

    const v2, 0x7f070385

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2601
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2602
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v9, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2603
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->nightModeHintView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42600000    # 56.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2605
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2606
    .local v7, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v0, v11, [Landroid/animation/Animator;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->nightModeHintView:Landroid/widget/FrameLayout;

    const-string/jumbo v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v12

    const/4 v4, 0x0

    aput v4, v3, v11

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2607
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2608
    new-instance v0, Lorg/telegram/ui/ArticleViewer$23;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$23;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2623
    const-wide/16 v0, 0xfa

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2624
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private showPopup(Landroid/view/View;III)V
    .locals 9
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 838
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 919
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v1, :cond_1

    .line 844
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupRect:Landroid/graphics/Rect;

    .line 845
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 846
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020162

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 847
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 848
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$1;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 862
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$2;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 870
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShowedFromBotton(Z)V

    .line 872
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 873
    .local v0, "deleteView":Landroid/widget/TextView;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 874
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 875
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 876
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 877
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 878
    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 879
    const-string/jumbo v1, "Copy"

    const v2, 0x7f0701ca

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    new-instance v1, Lorg/telegram/ui/ArticleViewer$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$3;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v6, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v1, v2, v6, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 896
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 897
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationStyle(I)V

    .line 898
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setOutsideTouchable(Z)V

    .line 899
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setClippingEnabled(Z)V

    .line 900
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setInputMethodMode(I)V

    .line 901
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setSoftInputMode(I)V

    .line 902
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 903
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$4;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 915
    .end local v0    # "deleteView":Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->measure(II)V

    .line 916
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setFocusable(Z)V

    .line 917
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 918
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V

    goto/16 :goto_0
.end method

.method private showProgressView(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2894
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2895
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2897
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    .line 2898
    if-eqz p1, :cond_1

    .line 2899
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2900
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2901
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2902
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2903
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2904
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2905
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2906
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2907
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2901
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2920
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$28;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$28;-><init>(Lorg/telegram/ui/ArticleViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2939
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2940
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2941
    return-void

    .line 2909
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2910
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2911
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2912
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2913
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2914
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2915
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2916
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2917
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2911
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0
.end method

.method private toggleActionBar(ZZ)V
    .locals 9
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 6941
    if-eqz p1, :cond_1

    .line 6942
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 6943
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_0

    .line 6944
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6946
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6947
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6950
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    .line 6951
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 6952
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 6954
    if-eqz p2, :cond_8

    .line 6955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6956
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_5

    move v1, v2

    :goto_0
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6957
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_6

    move v1, v2

    :goto_1
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6958
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6959
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    if-eqz p1, :cond_7

    :goto_2
    aput v2, v5, v7

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6961
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    .line 6962
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 6963
    if-nez p1, :cond_3

    .line 6964
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$41;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$41;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6981
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6982
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 6999
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_4
    :goto_3
    return-void

    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_5
    move v1, v3

    .line 6956
    goto :goto_0

    :cond_6
    move v1, v3

    .line 6957
    goto :goto_1

    :cond_7
    move v2, v3

    .line 6959
    goto :goto_2

    .line 6984
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_b

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    .line 6985
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6986
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 6987
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6989
    :cond_9
    if-nez p1, :cond_4

    .line 6990
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 6991
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_a

    .line 6992
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6994
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6995
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_b
    move v1, v3

    .line 6984
    goto :goto_4

    :cond_c
    move v1, v3

    .line 6985
    goto :goto_5

    :cond_d
    move v2, v3

    .line 6987
    goto :goto_6
.end method

.method private updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .locals 3
    .param p2, "typefaceNormal"    # Landroid/graphics/Typeface;
    .param p3, "typefaceBoldItalic"    # Landroid/graphics/Typeface;
    .param p4, "typefaceBold"    # Landroid/graphics/Typeface;
    .param p5, "typefaceItalic"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1809
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1810
    .local v0, "flags":Ljava/lang/Integer;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextPaint;

    .line 1811
    .local v1, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1812
    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1820
    :goto_0
    return-void

    .line 1813
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1814
    invoke-virtual {v1, p4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 1815
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 1816
    invoke-virtual {v1, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 1818
    :cond_2
    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private updateInterfaceForCurrentPage(Z)V
    .locals 18
    .param p1, "back"    # Z

    .prologue
    .line 949
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v15, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lorg/telegram/ui/ArticleViewer;->isRtl:I

    .line 953
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/ArticleViewer;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .line 954
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 955
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 956
    const/4 v11, 0x0

    .line 957
    .local v11, "numBlocks":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 958
    .local v6, "count":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    if-ge v2, v6, :cond_10

    .line 959
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 960
    .local v4, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v15, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    if-eqz v15, :cond_3

    .line 958
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 962
    :cond_3
    instance-of v15, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v15, :cond_4

    .line 963
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 966
    :cond_4
    const/4 v15, 0x0

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 967
    const/4 v15, 0x0

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 968
    instance-of v15, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v15, :cond_7

    .line 969
    const/16 v16, 0x0

    move-object v15, v4

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 990
    :cond_5
    :goto_3
    if-nez v2, :cond_b

    .line 991
    const/4 v15, 0x1

    iput-boolean v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->first:Z

    .line 992
    instance-of v15, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v15, :cond_6

    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v15, :cond_6

    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    instance-of v15, v15, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-nez v15, :cond_6

    const/4 v15, 0x1

    if-le v6, v15, :cond_6

    .line 993
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 994
    .local v10, "next":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v15, v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v15, :cond_6

    .line 995
    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .end local v10    # "next":Lorg/telegram/tgnet/TLRPC$PageBlock;
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/ArticleViewer;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .line 1001
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/ArticleViewer;->addAllMediaFromBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    instance-of v15, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v15, :cond_2

    .line 1004
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f

    .line 1005
    const/4 v15, -0x1

    iput v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    .line 1006
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_4
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_f

    .line 1007
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 1008
    .local v8, "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v15, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    if-eqz v15, :cond_c

    .line 1006
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 970
    .end local v3    # "b":I
    .end local v8    # "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_7
    instance-of v15, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v15, :cond_8

    move-object v8, v4

    .line 971
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 972
    .local v8, "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_5

    .line 973
    const/16 v16, 0x0

    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 974
    const/16 v16, 0x0

    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 972
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 976
    .end local v7    # "i":I
    .end local v8    # "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    :cond_8
    instance-of v15, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v15, :cond_9

    move-object v8, v4

    .line 977
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .line 978
    .local v8, "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_5

    .line 979
    const/16 v16, 0x0

    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 978
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 981
    .end local v7    # "i":I
    .end local v8    # "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;
    :cond_9
    instance-of v15, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v15, :cond_a

    move-object v8, v4

    .line 982
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 983
    .local v8, "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_8
    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_5

    .line 984
    const/16 v16, 0x0

    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 985
    const/16 v16, 0x0

    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 983
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 987
    .end local v7    # "i":I
    .end local v8    # "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    :cond_a
    instance-of v15, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz v15, :cond_5

    .line 988
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v15, v0

    add-int/2addr v15, v2

    iput v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->mid:I

    goto/16 :goto_3

    .line 998
    :cond_b
    const/4 v15, 0x1

    if-ne v2, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v15, :cond_6

    goto/16 :goto_2

    .line 1010
    .restart local v3    # "b":I
    .local v8, "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_c
    instance-of v15, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v15, :cond_d

    .line 1011
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$PageBlock;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1014
    :cond_d
    const/4 v15, 0x1

    iput v15, v8, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    .line 1015
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v3, v15, :cond_e

    .line 1016
    const/4 v15, 0x1

    iput-boolean v15, v8, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    .line 1018
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/telegram/ui/ArticleViewer;->addAllMediaFromBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 1022
    .end local v3    # "b":I
    .end local v8    # "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_f
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    instance-of v15, v15, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-nez v15, :cond_2

    .line 1023
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    .line 1024
    .local v5, "caption":Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v15, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1025
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1030
    .end local v4    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .end local v5    # "caption":Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v15}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 1032
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_11

    if-eqz p1, :cond_14

    .line 1033
    :cond_11
    sget-object v15, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v16, "articles"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1034
    .local v14, "preferences":Landroid/content/SharedPreferences;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "article"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1035
    .local v9, "key":Ljava/lang/String;
    const/4 v15, -0x1

    invoke-interface {v14, v9, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1037
    .local v13, "position":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "r"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    sget-object v17, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v15, v0, :cond_12

    const/4 v15, 0x1

    :goto_9
    move/from16 v0, v16

    if-ne v0, v15, :cond_13

    .line 1038
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "o"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v16

    sub-int v12, v15, v16

    .line 1042
    .local v12, "offset":I
    :goto_a
    const/4 v15, -0x1

    if-eq v13, v15, :cond_0

    .line 1043
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v15, v13, v12}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_0

    .line 1037
    .end local v12    # "offset":I
    :cond_12
    const/4 v15, 0x0

    goto :goto_9

    .line 1040
    :cond_13
    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    .restart local v12    # "offset":I
    goto :goto_a

    .line 1046
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "offset":I
    .end local v13    # "position":I
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_0
.end method

.method private updateMinMax(F)V
    .locals 5
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    .line 7825
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 7826
    .local v1, "maxW":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x2

    .line 7827
    .local v0, "maxH":I
    if-lez v1, :cond_0

    .line 7828
    neg-int v2, v1

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    .line 7829
    int-to-float v2, v1

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    .line 7833
    :goto_0
    if-lez v0, :cond_1

    .line 7834
    neg-int v2, v0

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    .line 7835
    int-to-float v2, v0

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    .line 7839
    :goto_1
    return-void

    .line 7831
    :cond_0
    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    goto :goto_0

    .line 7837
    :cond_1
    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    goto :goto_1
.end method

.method private updateNightModeButton()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2628
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->nightModeImageView:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedColor:I

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2629
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->nightModeImageView:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedColor:I

    if-ne v0, v3, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2630
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->nightModeImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedColor:I

    if-eq v0, v3, :cond_2

    const v0, -0xeb6a17

    :goto_2
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2631
    return-void

    .line 2628
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2629
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 2630
    :cond_2
    const v0, -0x333334

    goto :goto_2
.end method

.method private updatePaintColors()V
    .locals 11

    .prologue
    const v10, -0xd9d9da

    const v9, -0xebebec    # -1.9683E38f

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1834
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "articles"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "font_color"

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->selectedColor:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1835
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getSelectedColor()I

    move-result v1

    .line 1836
    .local v1, "currentColor":I
    if-nez v1, :cond_1

    .line 1837
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1838
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v4, -0xa0909

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 1847
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_ivStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 1848
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_ivStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    aget-object v3, v3, v7

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-static {v3, v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1849
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_ivStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    aget-object v3, v3, v7

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-static {v3, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1850
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_ivStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    aget-object v3, v3, v6

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-static {v3, v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1851
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_ivStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    aget-object v3, v3, v6

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-static {v3, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1847
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1839
    .end local v0    # "a":I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 1840
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    const v4, -0xa1024

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1841
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v4, -0xa1024

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    goto :goto_0

    .line 1842
    :cond_2
    if-ne v1, v8, :cond_0

    .line 1843
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1844
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    goto :goto_0

    .line 1854
    .restart local v0    # "a":I
    :cond_3
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_4

    .line 1855
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1857
    :cond_4
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_5

    .line 1858
    if-nez v1, :cond_b

    .line 1859
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    const v4, -0xa0704

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1866
    :cond_5
    :goto_2
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_6

    .line 1867
    if-nez v1, :cond_d

    .line 1868
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    const v4, -0x141415

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1876
    :cond_6
    :goto_3
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    if-eqz v3, :cond_7

    .line 1877
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1879
    :cond_7
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    if-eqz v3, :cond_8

    .line 1880
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-nez v3, :cond_f

    .line 1881
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1886
    :cond_8
    :goto_4
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    if-eqz v3, :cond_9

    .line 1887
    if-nez v1, :cond_10

    .line 1888
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const v4, -0x706860

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1895
    :cond_9
    :goto_5
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_a

    .line 1896
    if-nez v1, :cond_12

    .line 1897
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    const v4, -0x322e2b

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1905
    :cond_a
    :goto_6
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1906
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_7

    .line 1860
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_b
    if-ne v1, v6, :cond_c

    .line 1861
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    const v4, -0x1a2138

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 1862
    :cond_c
    if-ne v1, v8, :cond_5

    .line 1863
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 1869
    :cond_d
    if-ne v1, v6, :cond_e

    .line 1870
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    const v4, -0x1a2138

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 1871
    :cond_e
    if-ne v1, v8, :cond_6

    .line 1872
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 1883
    :cond_f
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_4

    .line 1889
    :cond_10
    if-ne v1, v6, :cond_11

    .line 1890
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const v4, -0xb2b4bb

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_5

    .line 1891
    :cond_11
    if-ne v1, v8, :cond_9

    .line 1892
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const v4, -0x99999a

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_5

    .line 1898
    :cond_12
    if-ne v1, v6, :cond_13

    .line 1899
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    const v4, -0x3e455b

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 1900
    :cond_13
    if-ne v1, v8, :cond_a

    .line 1901
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    const v4, -0xbbbbbc

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 1908
    :cond_14
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1909
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_8

    .line 1911
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_15
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1912
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_9

    .line 1914
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_16
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1915
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_a

    .line 1917
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_17
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1918
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_b

    .line 1920
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_18
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1921
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_c

    .line 1923
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_19
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1924
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_d

    .line 1926
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_1a
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1927
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_e

    .line 1929
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_1b
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1930
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_f

    .line 1932
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_1c
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->videoTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1933
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_10

    .line 1935
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_1d
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->captionTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1936
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_11

    .line 1938
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_1e
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1939
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_12

    .line 1941
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_1f
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1942
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_13

    .line 1944
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_20
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->subquoteTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1945
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_14

    .line 1947
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_21
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1948
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_15

    .line 1950
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_22
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1951
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_16

    .line 1953
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_23
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->slideshowTextPaints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1954
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_17

    .line 1956
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_24
    return-void
.end method

.method private updatePaintFonts()V
    .locals 8

    .prologue
    .line 1761
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "articles"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v6, "font_type"

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1762
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-nez v0, :cond_0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 1763
    .local v2, "typefaceNormal":Landroid/graphics/Typeface;
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-nez v0, :cond_1

    const-string/jumbo v0, "fonts/ritalic.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 1764
    .local v5, "typefaceItalic":Landroid/graphics/Typeface;
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1765
    .local v4, "typefaceBold":Landroid/graphics/Typeface;
    :goto_2
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-nez v0, :cond_3

    const-string/jumbo v0, "fonts/rmediumitalic.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 1767
    .local v3, "typefaceBoldItalic":Landroid/graphics/Typeface;
    :goto_3
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1768
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_4

    .line 1762
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    .end local v2    # "typefaceNormal":Landroid/graphics/Typeface;
    .end local v3    # "typefaceBoldItalic":Landroid/graphics/Typeface;
    .end local v4    # "typefaceBold":Landroid/graphics/Typeface;
    .end local v5    # "typefaceItalic":Landroid/graphics/Typeface;
    :cond_0
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1763
    .restart local v2    # "typefaceNormal":Landroid/graphics/Typeface;
    :cond_1
    const-string/jumbo v0, "serif"

    const/4 v6, 0x2

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    goto :goto_1

    .line 1764
    .restart local v5    # "typefaceItalic":Landroid/graphics/Typeface;
    :cond_2
    const-string/jumbo v0, "serif"

    const/4 v6, 0x1

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_2

    .line 1765
    .restart local v4    # "typefaceBold":Landroid/graphics/Typeface;
    :cond_3
    const-string/jumbo v0, "serif"

    const/4 v6, 0x3

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_3

    .line 1770
    .restart local v3    # "typefaceBoldItalic":Landroid/graphics/Typeface;
    :cond_4
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1771
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_5

    .line 1773
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_5
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1774
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_6

    .line 1776
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_6
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1777
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_7

    .line 1779
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_7
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1780
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_8

    .line 1782
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_8
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->videoTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1783
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_9

    .line 1785
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_9
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->captionTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1786
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_a

    .line 1788
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_a
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1789
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_b

    .line 1791
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_b
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1792
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_c

    .line 1794
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_c
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->subquoteTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1795
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_d

    .line 1797
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_d
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1798
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_e

    .line 1800
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_e
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1801
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_f

    .line 1803
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_f
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->slideshowTextPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    move-object v0, p0

    .line 1804
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(Ljava/util/Map$Entry;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    goto :goto_10

    .line 1806
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    :cond_10
    return-void
.end method

.method private updatePaintSize()V
    .locals 3

    .prologue
    .line 1756
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "articles"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "font_size"

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 1758
    return-void
.end method

.method private updateVideoPlayerTime()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x3c

    .line 6780
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v3, :cond_1

    .line 6781
    const-string/jumbo v2, "00:00 / 00:00"

    .line 6792
    .local v2, "newText":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6793
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6795
    :cond_0
    return-void

    .line 6783
    .end local v2    # "newText":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v6

    div-long v0, v6, v12

    .line 6784
    .local v0, "current":J
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    .line 6785
    .local v4, "total":J
    div-long/2addr v4, v12

    .line 6786
    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    cmp-long v3, v0, v8

    if-eqz v3, :cond_2

    .line 6787
    const-string/jumbo v3, "%02d:%02d / %02d:%02d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    div-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    rem-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    div-long v8, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    rem-long v8, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "newText":Ljava/lang/String;
    goto :goto_0

    .line 6789
    .end local v2    # "newText":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "00:00 / 00:00"

    .restart local v2    # "newText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected cancelCheckLongPress()V
    .locals 2

    .prologue
    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    .line 1087
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1090
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1093
    :cond_1
    return-void
.end method

.method public close(ZZ)V
    .locals 11
    .param p1, "byBackPress"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3105
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3194
    :cond_0
    :goto_0
    return-void

    .line 3108
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v2, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3109
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v2, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3110
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v2, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3111
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStarted:I

    invoke-virtual {v2, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3112
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 3113
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 3114
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3115
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 3116
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3117
    iput-object v9, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    .line 3121
    :cond_2
    :goto_1
    if-eqz p2, :cond_0

    .line 3125
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-eqz v2, :cond_4

    .line 3126
    if-nez p2, :cond_b

    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    .line 3127
    if-eqz p2, :cond_0

    .line 3131
    :cond_4
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    if-eqz v2, :cond_5

    .line 3132
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    invoke-virtual {v2, v5, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3133
    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    .line 3134
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    .line 3136
    :cond_5
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    if-eqz v2, :cond_6

    .line 3137
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    invoke-virtual {v2, v5, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3138
    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    .line 3139
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    .line 3141
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    .line 3142
    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    .line 3143
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->removeLastPageFromStack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3148
    :cond_7
    iput-object v9, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3150
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_8

    .line 3151
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 3152
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3158
    :cond_8
    :goto_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3159
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v6, "alpha"

    new-array v7, v3, [F

    aput v10, v7, v4

    .line 3160
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v3, [F

    aput v10, v7, v4

    .line 3161
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v6, "translationX"

    new-array v7, v8, [F

    aput v10, v7, v4

    const/high16 v4, 0x42600000    # 56.0f

    .line 3162
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    .line 3159
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3164
    iput v8, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 3165
    new-instance v2, Lorg/telegram/ui/ArticleViewer$33;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$33;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 3178
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3179
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3180
    new-instance v2, Lorg/telegram/ui/ArticleViewer$34;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$34;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 3190
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_9

    .line 3191
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8, v9}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3193
    :cond_9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 3118
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v2, :cond_2

    .line 3119
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    goto/16 :goto_1

    :cond_b
    move v2, v4

    .line 3126
    goto/16 :goto_2

    .line 3154
    :catch_0
    move-exception v1

    .line 3155
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method public closePhoto(Z)V
    .locals 31
    .param p1, "animated"    # Z

    .prologue
    .line 7583
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->checkPhotoAnimation()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 7787
    :cond_0
    :goto_0
    return-void

    .line 7587
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    .line 7588
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 7589
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 7590
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 7591
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 7593
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    .line 7595
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 7596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/VelocityTracker;->recycle()V

    .line 7597
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 7600
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer;->getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v15

    .line 7602
    .local v15, "object":Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    if-eqz p1, :cond_e

    .line 7603
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    .line 7604
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 7605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 7607
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7609
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 7610
    .local v14, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 7611
    .local v11, "drawRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v16

    .line 7612
    .local v16, "orientation":I
    const/4 v4, 0x0

    .line 7613
    .local v4, "animatedOrientation":I
    if-eqz v15, :cond_3

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 7614
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v4

    .line 7616
    :cond_3
    if-eqz v4, :cond_4

    .line 7617
    move/from16 v16, v4

    .line 7619
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 7620
    if-eqz v15, :cond_a

    .line 7621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    move/from16 v23, v0

    if-eqz v23, :cond_9

    const/16 v23, 0x1

    :goto_1
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 7622
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v11

    .line 7623
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7624
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7632
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7634
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v18, v23, v24

    .line 7635
    .local v18, "scaleX":F
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v19, v23, v24

    .line 7636
    .local v19, "scaleY":F
    cmpl-float v23, v18, v19

    if-lez v23, :cond_b

    move/from16 v17, v19

    .line 7637
    .local v17, "scale2":F
    :goto_3
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    mul-float v20, v23, v17

    .line 7638
    .local v20, "width":F
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    mul-float v13, v23, v17

    .line 7639
    .local v13, "height":F
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v20

    const/high16 v24, 0x40000000    # 2.0f

    div-float v21, v23, v24

    .line 7640
    .local v21, "xPos":F
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 7641
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/WindowInsets;

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v21, v21, v23

    .line 7643
    :cond_5
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v13

    const/high16 v24, 0x40000000    # 2.0f

    div-float v22, v23, v24

    .line 7644
    .local v22, "yPos":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move/from16 v24, v0

    add-float v24, v24, v21

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 7645
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move/from16 v24, v0

    add-float v24, v24, v22

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 7646
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v24, v0

    mul-float v24, v24, v17

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 7647
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v24, v0

    mul-float v24, v24, v17

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 7649
    if-eqz v15, :cond_c

    .line 7650
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 7651
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 7652
    .local v7, "clipHorizontal":I
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 7654
    .local v9, "clipVertical":I
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v10, v0, [I

    .line 7655
    .local v10, "coords2":[I
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7656
    const/16 v23, 0x1

    aget v23, v10, v23

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v23, v23, v24

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipTopAddition:I

    move/from16 v24, v0

    add-int v8, v23, v24

    .line 7657
    .local v8, "clipTop":I
    if-gez v8, :cond_6

    .line 7658
    const/4 v8, 0x0

    .line 7660
    :cond_6
    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v23, v23, v24

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    add-int v23, v23, v24

    const/16 v24, 0x1

    aget v24, v10, v24

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    add-int v24, v24, v25

    sub-int v23, v23, v24

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipBottomAddition:I

    move/from16 v24, v0

    add-int v6, v23, v24

    .line 7661
    .local v6, "clipBottom":I
    if-gez v6, :cond_7

    .line 7662
    const/4 v6, 0x0

    .line 7665
    :cond_7
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 7666
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 7668
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v25

    aput v25, v23, v24

    .line 7669
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v25

    aput v25, v23, v24

    .line 7670
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v25

    aput v25, v23, v24

    .line 7671
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v25

    aput v25, v23, v24

    .line 7672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 7673
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x5

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 7674
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x6

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 7675
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x7

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 7677
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v25, v0

    aput v25, v23, v24

    .line 7678
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v25, v0

    aput v25, v23, v24

    .line 7679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aput v25, v23, v24

    .line 7680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x3

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aput v25, v23, v24

    .line 7681
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    int-to-float v0, v7

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 7682
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x5

    int-to-float v0, v8

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 7683
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x6

    int-to-float v0, v6

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 7684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x7

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    aput v25, v23, v24

    .line 7686
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "animationProgress"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    .line 7687
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7688
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7689
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7690
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7691
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    .line 7686
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7705
    .end local v6    # "clipBottom":I
    .end local v7    # "clipHorizontal":I
    .end local v8    # "clipTop":I
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    :goto_4
    new-instance v23, Lorg/telegram/ui/ArticleViewer$47;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer$47;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 7718
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 7719
    new-instance v23, Lorg/telegram/ui/ArticleViewer$48;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$48;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    .line 7734
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_8

    .line 7735
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7737
    :cond_8
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 7782
    .end local v4    # "animatedOrientation":I
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v13    # "height":F
    .end local v14    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "orientation":I
    .end local v17    # "scale2":F
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    .end local v20    # "width":F
    .end local v21    # "xPos":F
    .end local v22    # "yPos":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 7783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 7784
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 7785
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    const/16 v23, 0x0

    check-cast v23, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 7621
    .restart local v4    # "animatedOrientation":I
    .restart local v11    # "drawRegion":Landroid/graphics/Rect;
    .restart local v14    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v16    # "orientation":I
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 7627
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 7628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v23

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7629
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v23

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7630
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .restart local v18    # "scaleX":F
    .restart local v19    # "scaleY":F
    :cond_b
    move/from16 v17, v18

    .line 7636
    goto/16 :goto_3

    .line 7694
    .restart local v13    # "height":F
    .restart local v17    # "scale2":F
    .restart local v20    # "width":F
    .restart local v21    # "xPos":F
    .restart local v22    # "yPos":F
    :cond_c
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v12, v23, v24

    .line 7695
    .local v12, "h":I
    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7696
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v24, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7697
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v24, v23

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    const-string/jumbo v27, "translationY"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move/from16 v23, v0

    const/16 v30, 0x0

    cmpl-float v23, v23, v30

    if-ltz v23, :cond_d

    int-to-float v0, v12

    move/from16 v23, v0

    :goto_6
    aput v23, v28, v29

    .line 7698
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v24, v25

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7699
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v24, v23

    const/16 v23, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7700
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v24, v23

    const/16 v23, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7701
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v24, v23

    .line 7695
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_4

    .line 7697
    :cond_d
    neg-int v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    goto :goto_6

    .line 7739
    .end local v4    # "animatedOrientation":I
    .end local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v12    # "h":I
    .end local v13    # "height":F
    .end local v14    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "orientation":I
    .end local v17    # "scale2":F
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    .end local v20    # "width":F
    .end local v21    # "xPos":F
    .end local v22    # "yPos":F
    :cond_e
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7740
    .restart local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v25, v0

    const-string/jumbo v26, "scaleX"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const v29, 0x3f666666    # 0.9f

    aput v29, v27, v28

    .line 7741
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v25, v0

    const-string/jumbo v26, "scaleY"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const v29, 0x3f666666    # 0.9f

    aput v29, v27, v28

    .line 7742
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7743
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7744
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7745
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 7746
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    .line 7740
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7748
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    .line 7749
    new-instance v23, Lorg/telegram/ui/ArticleViewer$49;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer$49;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 7766
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 7767
    new-instance v23, Lorg/telegram/ui/ArticleViewer$50;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$50;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    .line 7777
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_f

    .line 7778
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7780
    :cond_f
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_5

    .line 7686
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public collapse()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 2944
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3024
    :cond_0
    :goto_0
    return-void

    .line 2947
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2948
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 2949
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2950
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 2951
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2952
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    .line 2957
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-eqz v2, :cond_3

    .line 2958
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    .line 2961
    :cond_3
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_4

    .line 2962
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 2963
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2969
    :cond_4
    :goto_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2970
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v2, 0xc

    new-array v4, v2, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "translationX"

    new-array v6, v10, [F

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    .line 2971
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    const/high16 v8, 0x42600000    # 56.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    .line 2972
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v2, v9, :cond_7

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_3
    add-int/2addr v2, v8

    int-to-float v2, v2

    aput v2, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v10

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v5, "alpha"

    new-array v6, v10, [F

    aput v11, v6, v3

    .line 2973
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v13

    const/4 v2, 0x3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v3

    .line 2974
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    const/high16 v8, 0x42600000    # 56.0f

    .line 2975
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    aput v11, v7, v3

    .line 2976
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    new-array v7, v10, [F

    aput v12, v7, v3

    .line 2978
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x7

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    new-array v7, v10, [F

    aput v12, v7, v3

    .line 2979
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x8

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    aput v11, v7, v3

    .line 2980
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x9

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleX"

    new-array v7, v10, [F

    aput v12, v7, v3

    .line 2981
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0xa

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    aput v11, v7, v3

    .line 2982
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0xb

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleY"

    new-array v7, v10, [F

    aput v12, v7, v3

    .line 2983
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v2

    .line 2970
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2985
    iput-boolean v10, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    .line 2986
    iput v13, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 2987
    new-instance v2, Lorg/telegram/ui/ArticleViewer$29;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$29;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 3007
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3008
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3009
    new-instance v2, Lorg/telegram/ui/ArticleViewer$30;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$30;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 3019
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_5

    .line 3020
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3022
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v2, v12, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 3023
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2953
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v2, :cond_2

    .line 2954
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    goto/16 :goto_1

    .line 2965
    :catch_0
    move-exception v1

    .line 2966
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_7
    move v2, v3

    .line 2972
    goto/16 :goto_3
.end method

.method public destroyArticleViewer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3329
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    if-nez v4, :cond_1

    .line 3355
    :cond_0
    :goto_0
    return-void

    .line 3332
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    .line 3334
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$WindowView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3335
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 3336
    .local v3, "wm":Landroid/view/WindowManager;
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3338
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3342
    :goto_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3343
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .line 3344
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->destroyWebView(Z)V

    .line 3342
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3339
    .end local v0    # "a":I
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    :catch_0
    move-exception v2

    .line 3340
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3346
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3348
    :try_start_1
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3352
    :goto_3
    iput-object v6, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    .line 3353
    iput-object v6, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3354
    sput-object v6, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    goto :goto_0

    .line 3349
    :catch_1
    move-exception v2

    .line 3350
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1671
    sget v10, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    if-ne p1, v10, :cond_2

    .line 1672
    const/4 v10, 0x0

    aget-object v3, p2, v10

    check-cast v3, Ljava/lang/String;

    .line 1673
    .local v3, "location":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v10, 0x3

    if-ge v0, v10, :cond_0

    .line 1674
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v10, v10, v0

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1675
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v10, v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    .line 1676
    const/4 v10, 0x1

    invoke-direct {p0, v0, v10}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 1753
    .end local v0    # "a":I
    .end local v3    # "location":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1673
    .restart local v0    # "a":I
    .restart local v3    # "location":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1680
    .end local v0    # "a":I
    .end local v3    # "location":Ljava/lang/String;
    :cond_2
    sget v10, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-ne p1, v10, :cond_4

    .line 1681
    const/4 v10, 0x0

    aget-object v3, p2, v10

    check-cast v3, Ljava/lang/String;

    .line 1682
    .restart local v3    # "location":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    const/4 v10, 0x3

    if-ge v0, v10, :cond_0

    .line 1683
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v10, v10, v0

    if-eqz v10, :cond_3

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1684
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v10, v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    .line 1685
    const/4 v10, 0x1

    invoke-direct {p0, v0, v10}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 1686
    if-nez v0, :cond_0

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v10}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1687
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/telegram/ui/ArticleViewer;->onActionClick(Z)V

    goto :goto_1

    .line 1682
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1692
    .end local v0    # "a":I
    .end local v3    # "location":Ljava/lang/String;
    :cond_4
    sget v10, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    if-ne p1, v10, :cond_6

    .line 1693
    const/4 v10, 0x0

    aget-object v3, p2, v10

    check-cast v3, Ljava/lang/String;

    .line 1694
    .restart local v3    # "location":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    const/4 v10, 0x3

    if-ge v0, v10, :cond_0

    .line 1695
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v10, v10, v0

    if-eqz v10, :cond_5

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1696
    const/4 v10, 0x1

    aget-object v8, p2, v10

    check-cast v8, Ljava/lang/Float;

    .line 1697
    .local v8, "progress":Ljava/lang/Float;
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v10, v10, v0

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    .line 1694
    .end local v8    # "progress":Ljava/lang/Float;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1700
    .end local v0    # "a":I
    .end local v3    # "location":Ljava/lang/String;
    :cond_6
    sget v10, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v10, :cond_7

    .line 1701
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 1702
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 1704
    :cond_7
    sget v10, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStarted:I

    if-ne p1, v10, :cond_9

    .line 1705
    const/4 v10, 0x0

    aget-object v4, p2, v10

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1707
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v10, :cond_0

    .line 1708
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1709
    .local v2, "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_4
    if-ge v0, v2, :cond_0

    .line 1710
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1711
    .local v9, "view":Landroid/view/View;
    instance-of v10, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    if-eqz v10, :cond_8

    move-object v1, v9

    .line 1712
    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 1713
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockAudioCell;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    .line 1709
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockAudioCell;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1717
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v9    # "view":Landroid/view/View;
    :cond_9
    sget v10, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, v10, :cond_a

    sget v10, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, v10, :cond_c

    .line 1718
    :cond_a
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v10, :cond_0

    .line 1719
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1720
    .restart local v2    # "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_5
    if-ge v0, v2, :cond_0

    .line 1721
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1722
    .restart local v9    # "view":Landroid/view/View;
    instance-of v10, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    if-eqz v10, :cond_b

    move-object v1, v9

    .line 1723
    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 1724
    .restart local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockAudioCell;
    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 1725
    .restart local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v4, :cond_b

    .line 1726
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    .line 1720
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockAudioCell;
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1731
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v9    # "view":Landroid/view/View;
    :cond_c
    sget v10, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, v10, :cond_0

    .line 1732
    const/4 v10, 0x0

    aget-object v5, p2, v10

    check-cast v5, Ljava/lang/Integer;

    .line 1733
    .local v5, "mid":Ljava/lang/Integer;
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v10, :cond_0

    .line 1734
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1735
    .restart local v2    # "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_6
    if-ge v0, v2, :cond_0

    .line 1736
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1737
    .restart local v9    # "view":Landroid/view/View;
    instance-of v10, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    if-eqz v10, :cond_d

    move-object v1, v9

    .line 1738
    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 1739
    .restart local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockAudioCell;
    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    .line 1740
    .local v7, "playing":Lorg/telegram/messenger/MessageObject;
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_d

    .line 1741
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 1742
    .local v6, "player":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_0

    .line 1743
    iget v10, v6, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput v10, v7, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1744
    iget v10, v6, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    iput v10, v7, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 1745
    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updatePlayingMessageProgress()V

    goto/16 :goto_1

    .line 1735
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockAudioCell;
    .end local v6    # "player":Lorg/telegram/messenger/MessageObject;
    .end local v7    # "playing":Lorg/telegram/messenger/MessageObject;
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public getAnimationValue()F
    .locals 1

    .prologue
    .line 8101
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    return v0
.end method

.method public isShowingImage(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 1
    .param p1, "object"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 7381
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 3358
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    .line 8408
    iget-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 8433
    :goto_0
    return v2

    .line 8411
    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 8412
    goto :goto_0

    .line 8414
    :cond_3
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v3, v3, v10

    if-nez v3, :cond_8

    .line 8415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 8416
    .local v0, "atx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 8417
    .local v1, "aty":F
    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 8418
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 8419
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    .line 8423
    :cond_4
    :goto_1
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_7

    .line 8424
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    .line 8428
    :cond_5
    :goto_2
    invoke-direct {p0, v9, v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    .line 8432
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    goto :goto_0

    .line 8420
    .restart local v0    # "atx":F
    .restart local v1    # "aty":F
    :cond_6
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 8421
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_1

    .line 8425
    :cond_7
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    .line 8426
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_2

    .line 8430
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_8
    invoke-direct {p0, v10, v8, v8, v2}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto :goto_3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 8438
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 8350
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 8375
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 8376
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 8377
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    float-to-int v8, v8

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    .line 8378
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->postInvalidate()V

    .line 8380
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 8371
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 7819
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    .line 7820
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    .line 7822
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 8365
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 8356
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 8385
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    if-eqz v6, :cond_0

    move v4, v5

    .line 8403
    :goto_0
    return v4

    .line 8388
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 8389
    .local v0, "drawTextureView":Z
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    .line 8390
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->access$13800(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I

    move-result v1

    .line 8391
    .local v1, "state":I
    if-lez v1, :cond_2

    const/4 v6, 0x3

    if-gt v1, v6, :cond_2

    .line 8392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 8393
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 8394
    .local v3, "y":F
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_2

    .line 8395
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_2

    .line 8396
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->onActionClick(Z)V

    .line 8397
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    goto :goto_0

    .end local v0    # "drawTextureView":Z
    .end local v1    # "state":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    move v0, v5

    .line 8388
    goto :goto_1

    .line 8402
    .restart local v0    # "drawTextureView":Z
    :cond_2
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    if-nez v6, :cond_3

    move v5, v4

    :cond_3
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/ArticleViewer;->toggleActionBar(ZZ)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 8360
    const/4 v0, 0x0

    return v0
.end method

.method public open(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2697
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 28
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 7398
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->checkPhotoAnimation()Z

    move-result v23

    if-nez v23, :cond_0

    if-nez p1, :cond_1

    .line 7399
    :cond_0
    const/16 v23, 0x0

    .line 7579
    :goto_0
    return v23

    .line 7402
    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ArticleViewer;->getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v15

    .line 7403
    .local v15, "object":Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    if-nez v15, :cond_2

    .line 7404
    const/16 v23, 0x0

    goto :goto_0

    .line 7407
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 7408
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 7409
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 7410
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 7412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 7413
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 7416
    :cond_3
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    .line 7417
    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->toggleActionBar(ZZ)V

    .line 7418
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    .line 7419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setAlpha(F)V

    .line 7421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    .line 7422
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    .line 7423
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    .line 7424
    if-eqz p1, :cond_4

    .line 7425
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 7427
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 7429
    .local v13, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 7430
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 7431
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7437
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lorg/telegram/ui/ArticleViewer;->onPhotoShow(ILorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    .line 7439
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v11

    .line 7440
    .local v11, "drawRegion":Landroid/graphics/Rect;
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v16

    .line 7441
    .local v16, "orientation":I
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v4

    .line 7442
    .local v4, "animatedOrientation":I
    if-eqz v4, :cond_6

    .line 7443
    move/from16 v16, v4

    .line 7446
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 7447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    .line 7448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 7449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    move/from16 v23, v0

    if-eqz v23, :cond_c

    const/16 v23, 0x1

    :goto_2
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 7450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setAlpha(F)V

    .line 7453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotX(F)V

    .line 7454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotY(F)V

    .line 7455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 7456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 7457
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 7458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 7459
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 7460
    .local v14, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7461
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7464
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v18, v23, v24

    .line 7465
    .local v18, "scaleX":F
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v19, v23, v24

    .line 7466
    .local v19, "scaleY":F
    cmpl-float v23, v18, v19

    if-lez v23, :cond_d

    move/from16 v17, v19

    .line 7467
    .local v17, "scale":F
    :goto_3
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v20, v23, v17

    .line 7468
    .local v20, "width":F
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v12, v23, v17

    .line 7469
    .local v12, "height":F
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v20

    const/high16 v24, 0x40000000    # 2.0f

    div-float v21, v23, v24

    .line 7470
    .local v21, "xPos":F
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 7471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/WindowInsets;

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v21, v21, v23

    .line 7473
    :cond_7
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v12

    const/high16 v24, 0x40000000    # 2.0f

    div-float v22, v23, v24

    .line 7474
    .local v22, "yPos":F
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 7475
    .local v7, "clipHorizontal":I
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 7477
    .local v9, "clipVertical":I
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v10, v0, [I

    .line 7478
    .local v10, "coords2":[I
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7479
    const/16 v23, 0x1

    aget v23, v10, v23

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v23, v23, v24

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipTopAddition:I

    move/from16 v24, v0

    add-int v8, v23, v24

    .line 7480
    .local v8, "clipTop":I
    if-gez v8, :cond_8

    .line 7481
    const/4 v8, 0x0

    .line 7483
    :cond_8
    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v23, v23, v24

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    add-int v23, v23, v24

    const/16 v24, 0x1

    aget v24, v10, v24

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    add-int v24, v24, v25

    sub-int v23, v23, v24

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipBottomAddition:I

    move/from16 v24, v0

    add-int v6, v23, v24

    .line 7484
    .local v6, "clipBottom":I
    if-gez v6, :cond_9

    .line 7485
    const/4 v6, 0x0

    .line 7487
    :cond_9
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 7488
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 7490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v25

    aput v25, v23, v24

    .line 7491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v25

    aput v25, v23, v24

    .line 7492
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v25

    aput v25, v23, v24

    .line 7493
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v25

    aput v25, v23, v24

    .line 7494
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    int-to-float v0, v7

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 7495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x5

    int-to-float v0, v8

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 7496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x6

    int-to-float v0, v6

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 7497
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getRadius()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    aput v25, v23, v24

    .line 7499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aput v17, v23, v24

    .line 7500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aput v17, v23, v24

    .line 7501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aput v21, v23, v24

    .line 7502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x3

    aput v22, v23, v24

    .line 7503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 7504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x5

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 7505
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x6

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 7506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x7

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 7508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setVisibility(I)V

    .line 7509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 7510
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationProgress(F)V

    .line 7512
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7513
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "animationProgress"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    .line 7514
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_1

    .line 7515
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_2

    .line 7516
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_3

    .line 7517
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_4

    .line 7518
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    .line 7513
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7521
    new-instance v23, Lorg/telegram/ui/ArticleViewer$43;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$43;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 7544
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 7545
    new-instance v23, Lorg/telegram/ui/ArticleViewer$44;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$44;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    .line 7561
    new-instance v23, Lorg/telegram/ui/ArticleViewer$45;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/ArticleViewer$45;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7569
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    .line 7570
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7572
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ArticleViewer$46;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer$46;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->access$14702(Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 7579
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 7433
    .end local v4    # "animatedOrientation":I
    .end local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v6    # "clipBottom":I
    .end local v7    # "clipHorizontal":I
    .end local v8    # "clipTop":I
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v12    # "height":F
    .end local v14    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "orientation":I
    .end local v17    # "scale":F
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    .end local v20    # "width":F
    .end local v21    # "xPos":F
    .end local v22    # "yPos":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7434
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 7449
    .restart local v4    # "animatedOrientation":I
    .restart local v11    # "drawRegion":Landroid/graphics/Rect;
    .restart local v16    # "orientation":I
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_2

    .restart local v14    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v18    # "scaleX":F
    .restart local v19    # "scaleY":F
    :cond_d
    move/from16 v17, v18

    .line 7466
    goto/16 :goto_3

    .line 7513
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 7514
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 7515
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 7516
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 7517
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAnimationValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 8096
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    .line 8097
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 8098
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 19
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 1959
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1960
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_1

    .line 1961
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintColors()V

    .line 2584
    :cond_0
    return-void

    .line 1964
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    .line 1966
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "articles"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1967
    .local v14, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "font_size"

    const/4 v3, 0x2

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ArticleViewer;->selectedFontSize:I

    .line 1968
    const-string/jumbo v2, "font_type"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    .line 1969
    const-string/jumbo v2, "font_color"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ArticleViewer;->selectedColor:I

    .line 1970
    const-string/jumbo v2, "nightModeEnabled"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z

    .line 1972
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    .line 1974
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02013b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1975
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020244

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->slideDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 1976
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020243

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

    .line 1977
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;

    .line 1979
    new-instance v2, Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->setWillNotDraw(Z)V

    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->setClipChildren(Z)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->setFocusable(Z)V

    .line 1984
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1986
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1987
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 1988
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$6;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2001
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/16 v3, 0x404

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 2003
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    .line 2004
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2006
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2008
    new-instance v2, Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ClippingImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    .line 2009
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationValues([[F)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v4, 0x28

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2013
    new-instance v2, Lorg/telegram/ui/ArticleViewer$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer$7;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    .line 2024
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setVisibility(I)V

    .line 2025
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setWillNotDraw(Z)V

    .line 2026
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2028
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    .line 2029
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2033
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2034
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 2035
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2037
    new-instance v2, Landroid/view/TextureView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;

    .line 2039
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 2040
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    .line 2041
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2042
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;)V

    .line 2045
    :cond_3
    new-instance v2, Lorg/telegram/ui/ArticleViewer$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer$8;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2066
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 2067
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 2070
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$9;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$10;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$11;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 2137
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->headerPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2138
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->headerProgressPaint:Landroid/graphics/Paint;

    const v3, -0xdbdbda

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2139
    new-instance v2, Lorg/telegram/ui/ArticleViewer$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer$12;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    .line 2177
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$13;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2183
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 2184
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2186
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    .line 2187
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2188
    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    .line 2189
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    .line 2190
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const v3, -0x4c4c4d

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 2191
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotated(Z)V

    .line 2192
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2194
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const/16 v4, 0x36

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2195
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$14;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2207
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v13, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2208
    .local v13, "settingsContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2209
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2210
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_0
    const/4 v2, 0x3

    if-ge v9, v2, :cond_6

    .line 2211
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$ColorCell;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/ArticleViewer$ColorCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 2212
    packed-switch v9, :pswitch_data_0

    .line 2242
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    aget-object v3, v2, v9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer;->selectedColor:I

    if-ne v9, v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ArticleViewer$ColorCell;->select(Z)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    aget-object v2, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$ColorCell;->setTag(Ljava/lang/Object;)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/ArticleViewer$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$16;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$ColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    aget-object v2, v2, v9

    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2210
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2214
    :pswitch_0
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->nightModeImageView:Landroid/widget/ImageView;

    .line 2215
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->nightModeImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->nightModeImageView:Landroid/widget/ImageView;

    const v3, 0x7f020173

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->nightModeImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer;->selectedColor:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    const v2, -0xeb6a17

    :goto_3
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2218
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->nightModeImageView:Landroid/widget/ImageView;

    const/high16 v3, 0xf000000

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2219
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->nightModeImageView:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x35

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$ColorCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2220
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->nightModeImageView:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$15;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2233
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    aget-object v2, v2, v9

    const-string/jumbo v3, "ColorWhite"

    const v4, 0x7f0701ab

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$ColorCell;->setTextAndColor(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2217
    :cond_4
    const v2, -0x333334

    goto :goto_3

    .line 2236
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    aget-object v2, v2, v9

    const-string/jumbo v3, "ColorSepia"

    const v4, 0x7f0701a9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x151a37

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$ColorCell;->setTextAndColor(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2239
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->colorCells:[Lorg/telegram/ui/ArticleViewer$ColorCell;

    aget-object v2, v2, v9

    const-string/jumbo v3, "ColorDark"

    const v4, 0x7f0701a4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, -0xdcdcdd

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$ColorCell;->setTextAndColor(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2242
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2259
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->updateNightModeButton()V

    .line 2260
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v11, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2261
    .local v11, "divider":Landroid/view/View;
    const v2, -0x1f1f20

    invoke-virtual {v11, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2262
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x41700000    # 15.0f

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2263
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2265
    const/4 v9, 0x0

    :goto_4
    const/4 v2, 0x2

    if-ge v9, v2, :cond_8

    .line 2266
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$FontCell;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/ArticleViewer$FontCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 2267
    packed-switch v9, :pswitch_data_1

    .line 2275
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v3, v2, v9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-ne v9, v2, :cond_7

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ArticleViewer$FontCell;->select(Z)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v2, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$FontCell;->setTag(Ljava/lang/Object;)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/ArticleViewer$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$17;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$FontCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v2, v2, v9

    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2265
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2269
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v2, v2, v9

    const-string/jumbo v3, "Roboto"

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$FontCell;->setTextAndTypeface(Ljava/lang/String;Landroid/graphics/Typeface;)V

    goto :goto_5

    .line 2272
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v2, v2, v9

    const-string/jumbo v3, "Serif"

    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$FontCell;->setTextAndTypeface(Ljava/lang/String;Landroid/graphics/Typeface;)V

    goto :goto_5

    .line 2275
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 2291
    :cond_8
    new-instance v11, Landroid/view/View;

    .end local v11    # "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v11, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2292
    .restart local v11    # "divider":Landroid/view/View;
    const v2, -0x1f1f20

    invoke-virtual {v11, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2293
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x41700000    # 15.0f

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2294
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2296
    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2297
    .local v16, "textView":Landroid/widget/TextView;
    const v2, -0xdededf

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2298
    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2299
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 2300
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2301
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2302
    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2303
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x5

    :goto_7
    or-int/lit8 v2, v2, 0x30

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2304
    const-string/jumbo v2, "FontSize"

    const v3, 0x7f0702de

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2305
    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x5

    :goto_8
    or-int/lit8 v4, v4, 0x30

    const/16 v5, 0x11

    const/16 v6, 0xc

    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2307
    new-instance v15, Lorg/telegram/ui/ArticleViewer$SizeChooseView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lorg/telegram/ui/ArticleViewer$SizeChooseView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2308
    .local v15, "sizeChooseView":Lorg/telegram/ui/ArticleViewer$SizeChooseView;
    const/4 v2, -0x1

    const/16 v3, 0x26

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2310
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    const v5, 0x40ffffff    # 7.9999995f

    const/4 v6, -0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2311
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupAnimationEnabled(Z)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutInScreen(Z)V

    .line 2313
    new-instance v16, Landroid/widget/TextView;

    .end local v16    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2314
    .restart local v16    # "textView":Landroid/widget/TextView;
    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2315
    const-string/jumbo v2, "Aa"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2316
    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2317
    const v2, -0x4c4c4d

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2318
    const/16 v2, 0x11

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2319
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2320
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, -0x2

    invoke-virtual {v2, v13, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(Landroid/view/View;II)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->settingsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v18, v0

    const/16 v2, 0x30

    const/high16 v3, 0x42600000    # 56.0f

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42600000    # 56.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2324
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    .line 2325
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/16 v5, 0x38

    const/16 v6, 0x35

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$18;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2337
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    .line 2338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2339
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const v3, 0x7f020104

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2340
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2343
    new-instance v2, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 2344
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/16 v4, 0x30

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2347
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2348
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2349
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2350
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2351
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2352
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x63

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2353
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_d

    .line 2354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v3, -0x7ffefef8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2362
    :goto_9
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_9

    .line 2363
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    sput-object v2, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    .line 2364
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2365
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2366
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020149

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2367
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02021d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2370
    :cond_9
    new-instance v2, Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    .line 2372
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->blackPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2374
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 2375
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 2377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x40ffffff    # 7.9999995f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 2379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200bc

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0704f6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2381
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$19;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 2422
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v12

    .line 2424
    .local v12, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x2

    const v3, 0x7f02023c

    invoke-virtual {v12, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2425
    const/4 v2, 0x0

    const v3, 0x7f0200c3

    invoke-virtual {v12, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutInScreen(Z)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x3

    const-string/jumbo v4, "OpenInExternalApp"

    const v5, 0x7f070509

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    const-string/jumbo v4, "SaveToGallery"

    const v5, 0x7f070614

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2431
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    .line 2432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2433
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2435
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    .line 2436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2437
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2438
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2439
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2440
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2441
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2442
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2443
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2444
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2446
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    .line 2447
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2448
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2449
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2450
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2451
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2452
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2453
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2454
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2457
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 2458
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 2459
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 2460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 2461
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v3, 0x2

    new-instance v4, Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 2462
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 2464
    new-instance v2, Lorg/telegram/ui/Components/SeekBar;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    const v3, 0x66ffffff

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$20;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    .line 2475
    new-instance v2, Lorg/telegram/ui/ArticleViewer$21;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer$21;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    .line 2523
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 2524
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2526
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    .line 2527
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2528
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2529
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$22;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$22;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2542
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    .line 2543
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2544
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2545
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2548
    new-instance v2, Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 2549
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 2551
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2552
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2553
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2554
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2555
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2556
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2557
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2558
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2561
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2562
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2563
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2564
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStarted:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2566
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getSelectedColor()I

    move-result v10

    .line 2567
    .local v10, "color":I
    if-nez v10, :cond_e

    .line 2568
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2569
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v3, -0xa0909

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 2578
    :cond_a
    :goto_a
    const/4 v9, 0x0

    :goto_b
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_ivStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v9, v2, :cond_0

    .line 2579
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_ivStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2580
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_ivStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2581
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_ivStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v9

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2582
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_ivStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v9

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2578
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 2303
    .end local v10    # "color":I
    .end local v12    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v15    # "sizeChooseView":Lorg/telegram/ui/ArticleViewer$SizeChooseView;
    :cond_b
    const/4 v2, 0x3

    goto/16 :goto_7

    .line 2305
    :cond_c
    const/4 v4, 0x3

    goto/16 :goto_8

    .line 2359
    .restart local v15    # "sizeChooseView":Lorg/telegram/ui/ArticleViewer$SizeChooseView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_9

    .line 2570
    .restart local v10    # "color":I
    .restart local v12    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_e
    const/4 v2, 0x1

    if-ne v10, v2, :cond_f

    .line 2571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    const v3, -0xa1024

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2572
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v3, -0xa1024

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    goto :goto_a

    .line 2573
    :cond_f
    const/4 v2, 0x2

    if-ne v10, v2, :cond_a

    .line 2574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    const v3, -0xebebec    # -1.9683E38f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v3, -0xebebec    # -1.9683E38f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    goto/16 :goto_a

    .line 2212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2267
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 3362
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 3387
    :goto_0
    return-void

    .line 3366
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 3367
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3368
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3374
    :cond_1
    :goto_1
    :try_start_1
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    .line 3375
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3376
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$38;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$38;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3383
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3384
    :catch_0
    move-exception v0

    .line 3385
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3370
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3371
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected startCheckLongPress()V
    .locals 4

    .prologue
    .line 1075
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    if-eqz v0, :cond_0

    .line 1083
    :goto_0
    return-void

    .line 1078
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    .line 1079
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    if-nez v0, :cond_1

    .line 1080
    new-instance v0, Lorg/telegram/ui/ArticleViewer$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ArticleViewer$CheckForTap;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    .line 1082
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public uncollapse()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3027
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3083
    :cond_0
    :goto_0
    return-void

    .line 3035
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3036
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v1, 0xc

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationX"

    new-array v4, v7, [F

    aput v8, v4, v6

    .line 3037
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    aput v8, v4, v6

    .line 3038
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    aput v9, v4, v6

    .line 3039
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 3040
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 3041
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 3042
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 3044
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 3045
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 3046
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 3047
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 3048
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 3049
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3036
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3051
    iput-boolean v6, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    .line 3052
    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 3053
    new-instance v1, Lorg/telegram/ui/ArticleViewer$31;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$31;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 3066
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3067
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3068
    new-instance v1, Lorg/telegram/ui/ArticleViewer$32;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$32;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 3078
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 3079
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3081
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v8, v7}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 3082
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method
