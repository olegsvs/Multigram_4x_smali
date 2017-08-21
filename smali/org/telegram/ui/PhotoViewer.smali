.class public Lorg/telegram/ui/PhotoViewer;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoViewer$QualityChooseView;,
        Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;,
        Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;,
        Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;,
        Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;,
        Lorg/telegram/ui/PhotoViewer$PhotoProgressView;,
        Lorg/telegram/ui/PhotoViewer$CounterView;,
        Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/PhotoViewer; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator; = null

.field private static final gallery_menu_delete:I = 0x6

.field private static final gallery_menu_gotomsg:I = 0x14

.field private static final gallery_menu_masks:I = 0xd

.field private static final gallery_menu_openin:I = 0xb

.field private static final gallery_menu_save:I = 0x1

.field private static final gallery_menu_send:I = 0x3

.field private static final gallery_menu_share:I = 0xa

.field private static final gallery_menu_showall:I = 0x2

.field private static progressDrawables:[Landroid/graphics/drawable/Drawable;

.field private static progressPaint:Landroid/graphics/Paint;


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actvityContext:Landroid/content/Context;

.field private allowMentions:Z

.field private allowShare:Z

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

.field private animationEndRunnable:Ljava/lang/Runnable;

.field private animationInProgress:I

.field private animationStartTime:J

.field private animationValue:F

.field private animationValues:[[F

.field private applying:Z

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private attachedToWindow:Z

.field private audioFramesSize:J

.field private avatarsArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Photo;",
            ">;"
        }
    .end annotation
.end field

.field private avatarsDialogId:I

.field private backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

.field private barQualityValue:I

.field private bitrate:I

.field private blackPaint:Landroid/graphics/Paint;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private bottomTouchEnabled:Z

.field private canDragDown:Z

.field private canShowBottom:Z

.field private canZoom:Z

.field private captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

.field private captionTextView:Landroid/widget/TextView;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private changeModeAnimation:Landroid/animation/AnimatorSet;

.field private changingPage:Z

.field private checkImageView:Lorg/telegram/ui/Components/CheckBox;

.field private classGuid:I

.field private compressItem:Landroid/widget/ImageView;

.field private compressItemAnimation:Landroid/animation/AnimatorSet;

.field private compressionsCount:I

.field private containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

.field private cropItem:Landroid/widget/ImageView;

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field private currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field private currentDialogId:J

.field private currentEditMode:I

.field private currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private currentFileNames:[Ljava/lang/String;

.field private currentIndex:I

.field private currentLoadingVideoRunnable:Ljava/lang/Runnable;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentPathObject:Ljava/lang/String;

.field private currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private currentPlayingVideoFile:Ljava/io/File;

.field private currentSubtitle:Ljava/lang/String;

.field private currentThumb:Landroid/graphics/Bitmap;

.field private currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private dateTextView:Landroid/widget/TextView;

.field private disableShowCheck:Z

.field private discardTap:Z

.field private doneButtonPressed:Z

.field private dontResetZoomOnFirstLayout:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private endReached:[Z

.field private endTime:J

.field private estimatedDuration:J

.field private estimatedSize:I

.field fromCamera:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private ignoreDidSetImage:Z

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private imagesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocationsSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesByIds:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesByIdsTemp:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private inPreview:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isCurrentVideo:Z

.field private isEvent:Z

.field private isFirstLoading:Z

.field private isPlaying:Z

.field private isVisible:Z

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private lastInsets:Ljava/lang/Object;

.field private lastTitle:Ljava/lang/String;

.field private leftImage:Lorg/telegram/messenger/ImageReceiver;

.field private loadInitialVideo:Z

.field private loadingMoreImages:Z

.field private masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private maxX:F

.field private maxY:F

.field private mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private mentionListAnimation:Landroid/animation/AnimatorSet;

.field private mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private mergeDialogId:J

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private muteItem:Landroid/widget/ImageView;

.field private muteItemAvailable:Z

.field private muteVideo:Z

.field private nameTextView:Landroid/widget/TextView;

.field private needCaptionLayout:Z

.field private needSearchImageInArr:Z

.field private opennedFromMedia:Z

.field private originalBitrate:I

.field private originalHeight:I

.field private originalSize:J

.field private originalWidth:I

.field private paintItem:Landroid/widget/ImageView;

.field private parentActivity:Landroid/app/Activity;

.field private parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private parentChatActivity:Lorg/telegram/ui/ChatActivity;

.field private photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

.field private photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

.field private photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

.field private photoQualityLayout:Landroid/widget/FrameLayout;

.field private photoQualityLayoutSize:I

.field private photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

.field private pickerView:Landroid/widget/FrameLayout;

.field private pickerViewSendButton:Landroid/widget/ImageView;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private previewViewEnd:I

.field private previousCompression:I

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private qualityBar:Landroid/widget/SeekBar;

.field private qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

.field private qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

.field private qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private requestingPreview:Z

.field private resetButton:Landroid/widget/TextView;

.field private resultHeight:I

.field private resultWidth:I

.field private rightImage:Lorg/telegram/messenger/ImageReceiver;

.field private rotationValue:I

.field private scale:F

.field private scroller:Landroid/widget/Scroller;

.field private selectedCompression:I

.field private sendPhotoType:I

.field private shareButton:Landroid/widget/ImageView;

.field private showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private startTime:J

.field private switchImageAfterAnimation:I

.field private textureUploaded:Z

.field private timeItem:Landroid/widget/ImageView;

.field private totalImagesCount:I

.field private totalImagesCountMerge:I

.field private transitionAnimationStartTime:J

.field private translationX:F

.field private translationY:F

.field private tryStartRequestPreviewOnFinish:Z

.field private tuneItem:Landroid/widget/ImageView;

.field private updateProgressRunnable:Ljava/lang/Runnable;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoDuration:F

.field private videoFramesSize:J

.field private videoPlayButton:Landroid/widget/ImageView;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

.field private videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

.field private videoPlayerTime:Landroid/widget/TextView;

.field private videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

.field private videoTextureView:Landroid/view/TextureView;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

.field private visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private wasLayout:Z

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x1000000

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 170
    new-instance v0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    .line 197
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 219
    new-instance v0, Lorg/telegram/ui/PhotoViewer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$1;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 282
    const/16 v0, 0x8

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    .line 302
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 303
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 304
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 310
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    .line 326
    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    .line 338
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 348
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 350
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 361
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 367
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 374
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    .line 377
    new-array v0, v3, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    .line 379
    new-array v0, v3, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 397
    const/16 v0, 0x1e

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayoutSize:I

    .line 6116
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 937
    return-void

    .line 326
    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$10002(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    return p1
.end method

.method static synthetic access$10100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/PhotoViewer;FFFZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    return-void
.end method

.method static synthetic access$10400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10502(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$10600(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$10802(Lorg/telegram/ui/PhotoViewer;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    return-wide p1
.end method

.method static synthetic access$10902(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    return v0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$11100(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    return v0
.end method

.method static synthetic access$11202(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    return p1
.end method

.method static synthetic access$11302(Lorg/telegram/ui/PhotoViewer;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$11400(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->setImages()V

    return-void
.end method

.method static synthetic access$11500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11802(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object v0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method static synthetic access$12100(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->redraw(I)V

    return-void
.end method

.method static synthetic access$12200(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    return v0
.end method

.method static synthetic access$12202(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    return p1
.end method

.method static synthetic access$12300(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    return v0
.end method

.method static synthetic access$12302(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    return p1
.end method

.method static synthetic access$12400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$12402(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$12500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    return-object v0
.end method

.method static synthetic access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$12700(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentLoadingVideoRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$12702(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->currentLoadingVideoRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$12802(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    return p1
.end method

.method static synthetic access$12900(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    return v0
.end method

.method static synthetic access$12902(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    return p1
.end method

.method static synthetic access$13000(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    return-wide v0
.end method

.method static synthetic access$13002(Lorg/telegram/ui/PhotoViewer;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    return-wide p1
.end method

.method static synthetic access$13100(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    return-wide v0
.end method

.method static synthetic access$13102(Lorg/telegram/ui/PhotoViewer;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    return-wide p1
.end method

.method static synthetic access$13202(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    return p1
.end method

.method static synthetic access$13300(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    return v0
.end method

.method static synthetic access$13302(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    return p1
.end method

.method static synthetic access$13400(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    return v0
.end method

.method static synthetic access$13402(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    return p1
.end method

.method static synthetic access$13500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    return v0
.end method

.method static synthetic access$13502(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    return p1
.end method

.method static synthetic access$13600(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    return-void
.end method

.method static synthetic access$13700(Lorg/telegram/ui/PhotoViewer;ZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->setCompressItemEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$13800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0
    .param p0, "x0"    # Landroid/view/animation/DecelerateInterpolator;

    .prologue
    .line 144
    sput-object p0, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$1500()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 144
    sput-object p0, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    return v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PhotoViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->wasLayout:Z

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->wasLayout:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PhotoViewer;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    return v0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    return p1
.end method

.method static synthetic access$3702(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    return p1
.end method

.method static synthetic access$3802(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PhotoViewer;F)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->setScaleToFill()V

    return-void
.end method

.method static synthetic access$4102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->attachedToWindow:Z

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isEvent:Z

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoPlayerTime()V

    return-void
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    return-wide v0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    return v0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    return p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/PhotoViewer;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->onSharePressed()V

    return-void
.end method

.method static synthetic access$6100(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->openCaptionEnter()V

    return-void
.end method

.method static synthetic access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    return v0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    return p1
.end method

.method static synthetic access$6400(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->previousCompression:I

    return v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->didChangedCompressionLevel(Z)V

    return-void
.end method

.method static synthetic access$6600(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->showQualityView(Z)V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/PhotoViewer;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    return v0
.end method

.method static synthetic access$6802(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    return p1
.end method

.method static synthetic access$6900(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    return-object v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    return v0
.end method

.method static synthetic access$7102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/VideoEditedInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getCurrentVideoEditedInfo()Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->barQualityValue:I

    return v0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->barQualityValue:I

    return p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V

    return-void
.end method

.method static synthetic access$7500(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return v0
.end method

.method static synthetic access$7502(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return p1
.end method

.method static synthetic access$7600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->timeItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    return v0
.end method

.method static synthetic access$7802(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    return p1
.end method

.method static synthetic access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    return v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->applyCurrentEditMode()V

    return-void
.end method

.method static synthetic access$802(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    return p1
.end method

.method static synthetic access$8100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    return v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    return v0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    return-void
.end method

.method static synthetic access$8500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowMentions:Z

    return v0
.end method

.method static synthetic access$8602(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->allowMentions:Z

    return p1
.end method

.method static synthetic access$8700(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$8702(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    return v0
.end method

.method static synthetic access$9002(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    return p1
.end method

.method static synthetic access$9102(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object v0
.end method

.method static synthetic access$9402(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object p1
.end method

.method static synthetic access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    return-object v0
.end method

.method static synthetic access$9502(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/PhotoPaintView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    return-object p1
.end method

.method static synthetic access$9600(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$9602(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$9702(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    return p1
.end method

.method static synthetic access$9802(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    return p1
.end method

.method static synthetic access$9902(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    return p1
.end method

.method private animateTo(FFFZ)V
    .locals 6
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z

    .prologue
    .line 5648
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZI)V

    .line 5649
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
    .line 5652
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 5674
    :goto_0
    return-void

    .line 5655
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 5656
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 5657
    iput p2, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 5658
    iput p3, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 5659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 5660
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 5661
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const-string/jumbo v3, "animationValue"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 5662
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5661
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5664
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5665
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5666
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$60;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$60;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5673
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 5661
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyCurrentEditMode()V
    .locals 13

    .prologue
    .line 3038
    const/4 v0, 0x0

    .line 3039
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 3040
    .local v12, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 3041
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3048
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 3049
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 3050
    .local v11, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v11, :cond_6

    .line 3051
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 3052
    .local v8, "object":Ljava/lang/Object;
    instance-of v1, v8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_e

    move-object v7, v8

    .line 3053
    check-cast v7, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3054
    .local v7, "entry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 3055
    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 3056
    if-eqz v11, :cond_1

    .line 3057
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 3059
    :cond_1
    if-eqz v12, :cond_2

    .line 3060
    iget-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3062
    :cond_2
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 3063
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_9

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3064
    const/4 v1, 0x1

    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->isCropped:Z

    .line 3093
    .end local v7    # "entry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_3
    :goto_2
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v1, :cond_4

    .line 3094
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->updatePhotoAtIndex(I)V

    .line 3095
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3096
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)V

    .line 3097
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 3098
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    .line 3101
    :cond_4
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 3102
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeX()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 3103
    .local v9, "scaleX":F
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeY()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 3104
    .local v10, "scaleY":F
    cmpl-float v1, v9, v10

    if-lez v1, :cond_16

    .end local v9    # "scaleX":F
    :goto_3
    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 3105
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 3106
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeY()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 3107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 3108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    .line 3110
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->onDisappear()V

    .line 3112
    .end local v10    # "scaleY":F
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 3113
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 3114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    .line 3115
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    .line 3117
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 3120
    .end local v8    # "object":Ljava/lang/Object;
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_6
    return-void

    .line 3042
    :cond_7
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 3043
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 3044
    :cond_8
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3045
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3046
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->getMasks()Ljava/util/ArrayList;

    move-result-object v12

    goto/16 :goto_0

    .line 3063
    .restart local v7    # "entry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v8    # "object":Ljava/lang/Object;
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_9
    const v1, -0xc25212

    goto/16 :goto_1

    .line 3065
    :cond_a
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 3066
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_b

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_4
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3067
    const/4 v1, 0x1

    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->isFiltered:Z

    goto/16 :goto_2

    .line 3066
    :cond_b
    const v1, -0xc25212

    goto :goto_4

    .line 3068
    :cond_c
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 3069
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_d

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_5
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3070
    const/4 v1, 0x1

    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->isPainted:Z

    goto/16 :goto_2

    .line 3069
    :cond_d
    const v1, -0xc25212

    goto :goto_5

    .line 3072
    .end local v7    # "entry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_e
    instance-of v1, v8, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_3

    move-object v7, v8

    .line 3073
    check-cast v7, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3074
    .local v7, "entry":Lorg/telegram/messenger/MediaController$SearchImage;
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    .line 3075
    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 3076
    if-eqz v11, :cond_f

    .line 3077
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    .line 3079
    :cond_f
    if-eqz v12, :cond_10

    .line 3080
    iget-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3082
    :cond_10
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 3083
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_11

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_6
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3084
    const/4 v1, 0x1

    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->isCropped:Z

    goto/16 :goto_2

    .line 3083
    :cond_11
    const v1, -0xc25212

    goto :goto_6

    .line 3085
    :cond_12
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 3086
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_13

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_7
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3087
    const/4 v1, 0x1

    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->isFiltered:Z

    goto/16 :goto_2

    .line 3086
    :cond_13
    const v1, -0xc25212

    goto :goto_7

    .line 3088
    :cond_14
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 3089
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_15

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_8
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3090
    const/4 v1, 0x1

    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->isPainted:Z

    goto/16 :goto_2

    .line 3089
    :cond_15
    const v1, -0xc25212

    goto :goto_8

    .end local v7    # "entry":Lorg/telegram/messenger/MediaController$SearchImage;
    .restart local v9    # "scaleX":F
    .restart local v10    # "scaleY":F
    :cond_16
    move v9, v10

    .line 3104
    goto/16 :goto_3
.end method

.method private checkAnimation()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4707
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v1, :cond_1

    .line 4708
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 4709
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 4710
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4711
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4713
    :cond_0
    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 4716
    :cond_1
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkMinMax(Z)V
    .locals 4
    .param p1, "zoom"    # Z

    .prologue
    .line 5613
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5614
    .local v0, "moveToX":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5615
    .local v1, "moveToY":F
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5616
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 5617
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5621
    :cond_0
    :goto_0
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 5622
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5626
    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5627
    return-void

    .line 5618
    :cond_2
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 5619
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_0

    .line 5623
    :cond_3
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 5624
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_1
.end method

.method private checkProgress(IZ)V
    .locals 15
    .param p1, "a"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 4430
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 4431
    .local v3, "index":I
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_6

    .line 4432
    add-int/lit8 v3, v3, 0x1

    .line 4436
    :cond_0
    :goto_0
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v11, v11, p1

    if-eqz v11, :cond_19

    .line 4437
    const/4 v2, 0x0

    .line 4438
    .local v2, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 4439
    .local v5, "isVideo":Z
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_7

    .line 4440
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 4441
    .local v7, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 4442
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4443
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 4444
    const/4 v2, 0x0

    .line 4447
    :cond_1
    if-nez v2, :cond_2

    .line 4448
    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 4450
    :cond_2
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v5

    .line 4477
    .end local v7    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3
    :goto_1
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 4478
    if-eqz v5, :cond_13

    .line 4479
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v11, v11, p1

    const/4 v12, 0x3

    move/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 4499
    :goto_2
    if-nez p1, :cond_5

    .line 4500
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-eqz v11, :cond_18

    if-nez v5, :cond_18

    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$9200(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v11

    if-eqz v11, :cond_18

    :cond_4
    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 4517
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "isVideo":Z
    :cond_5
    :goto_4
    return-void

    .line 4433
    :cond_6
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 4434
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4451
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "isVideo":Z
    :cond_7
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v11, :cond_f

    .line 4452
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 4453
    .local v1, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v12, "video"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 4454
    :cond_8
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_c

    .line 4455
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    .line 4459
    :cond_9
    :goto_5
    const/4 v5, 0x1

    .line 4465
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 4466
    :cond_b
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v12, v12, p1

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "f":Ljava/io/File;
    goto/16 :goto_1

    .line 4456
    :cond_c
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v11, :cond_9

    .line 4457
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v13}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v14, "mp4"

    invoke-static {v13, v14}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "f":Ljava/io/File;
    goto :goto_5

    .line 4460
    :cond_d
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_e

    .line 4461
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v12, v12, p1

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "f":Ljava/io/File;
    goto :goto_6

    .line 4462
    :cond_e
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v11, :cond_a

    .line 4463
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v12, v12, p1

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "f":Ljava/io/File;
    goto/16 :goto_6

    .line 4468
    .end local v1    # "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_f
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_12

    .line 4469
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4470
    .local v6, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-nez v11, :cond_10

    iget-boolean v11, p0, Lorg/telegram/ui/PhotoViewer;->isEvent:Z

    if-eqz v11, :cond_11

    :cond_10
    const/4 v11, 0x1

    :goto_7
    invoke-static {v6, v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 4471
    goto/16 :goto_1

    .line 4470
    :cond_11
    const/4 v11, 0x0

    goto :goto_7

    .line 4471
    .end local v6    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_12
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 4472
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v12, v12, p1

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4473
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 4474
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v12, v12, p1

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "f":Ljava/io/File;
    goto/16 :goto_1

    .line 4481
    :cond_13
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v11, v11, p1

    const/4 v12, -0x1

    move/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto/16 :goto_2

    .line 4484
    :cond_14
    if-eqz v5, :cond_17

    .line 4485
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v12, v12, p1

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 4486
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v11, v11, p1

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 4493
    :goto_8
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v12, v12, p1

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    .line 4494
    .local v10, "progress":Ljava/lang/Float;
    if-nez v10, :cond_15

    .line 4495
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 4497
    :cond_15
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v11, v11, p1

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    goto/16 :goto_2

    .line 4488
    .end local v10    # "progress":Ljava/lang/Float;
    :cond_16
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v11, v11, p1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto :goto_8

    .line 4491
    :cond_17
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v11, v11, p1

    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto :goto_8

    .line 4500
    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 4503
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "isVideo":Z
    :cond_19
    const/4 v4, 0x0

    .line 4504
    .local v4, "isLocalVideo":Z
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1a

    if-ltz v3, :cond_1a

    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_1a

    .line 4505
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 4506
    .local v8, "object":Ljava/lang/Object;
    instance-of v11, v8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v11, :cond_1a

    move-object v9, v8

    .line 4507
    check-cast v9, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 4508
    .local v9, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-boolean v4, v9, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    .line 4511
    .end local v8    # "object":Ljava/lang/Object;
    .end local v9    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_1a
    if-eqz v4, :cond_1b

    .line 4512
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v11, v11, p1

    const/4 v12, 0x3

    move/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto/16 :goto_4

    .line 4514
    :cond_1b
    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v11, v11, p1

    const/4 v12, -0x1

    move/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto/16 :goto_4
.end method

.method private closeCaptionEnter(Z)V
    .locals 5
    .param p1, "apply"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2750
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 2782
    :cond_0
    :goto_0
    return-void

    .line 2753
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2754
    .local v0, "object":Ljava/lang/Object;
    if-eqz p1, :cond_3

    .line 2755
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_8

    move-object v1, v0

    .line 2756
    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 2761
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2762
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getCurrentVideoEditedInfo()Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)V

    .line 2763
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 2764
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    .line 2767
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setTag(Ljava/lang/Object;)V

    .line 2768
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2769
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2770
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    .line 2772
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    if-eqz v1, :cond_5

    .line 2773
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v1, :cond_9

    move-object v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2775
    :cond_5
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2776
    :cond_6
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V

    .line 2777
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 2778
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2779
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    .line 2781
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    goto/16 :goto_0

    .line 2757
    :cond_8
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 2758
    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2773
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    goto :goto_2
.end method

.method private didChangedCompressionLevel(Z)V
    .locals 5
    .param p1, "request"    # Z

    .prologue
    .line 6302
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6303
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6304
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "compress_video2"

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6306
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    .line 6307
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    .line 6308
    if-eqz p1, :cond_0

    .line 6309
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    .line 6311
    :cond_0
    return-void
.end method

.method private getAdditionX()I
    .locals 2

    .prologue
    .line 5345
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 5346
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 5348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdditionY()I
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v0, 0x0

    .line 5352
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 5353
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_0
    add-int/2addr v0, v1

    .line 5357
    :cond_1
    :goto_0
    return v0

    .line 5354
    :cond_2
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v1, :cond_1

    .line 5355
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getContainerViewHeight()I
    .locals 1

    .prologue
    .line 5373
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    return v0
.end method

.method private getContainerViewHeight(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 5377
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 5378
    .local v0, "height":I
    if-nez p1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 5379
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    .line 5381
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 5382
    const/high16 v1, 0x43100000    # 144.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 5388
    :cond_1
    :goto_0
    return v0

    .line 5383
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 5384
    const/high16 v1, 0x43560000    # 214.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 5385
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 5386
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getContainerViewWidth()I
    .locals 1

    .prologue
    .line 5361
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 5365
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    .line 5366
    .local v0, "width":I
    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 5367
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 5369
    :cond_0
    return v0
.end method

.method private getCurrentVideoEditedInfo()Lorg/telegram/messenger/VideoEditedInfo;
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 2717
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 2718
    :cond_0
    const/4 v0, 0x0

    .line 2746
    :goto_0
    return-object v0

    .line 2720
    :cond_1
    new-instance v0, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v0}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    .line 2721
    .local v0, "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 2722
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 2723
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 2724
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 2725
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 2726
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 2727
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 2728
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    int-to-long v2, v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 2729
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 2731
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    .line 2732
    :cond_2
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 2733
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 2734
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v2, :cond_3

    :goto_1
    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 2735
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    goto :goto_0

    .line 2734
    :cond_3
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    goto :goto_1

    .line 2737
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v2, :cond_5

    .line 2738
    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    .line 2739
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    .line 2741
    :cond_5
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 2742
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 2743
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v2, :cond_6

    :goto_2
    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 2744
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    goto :goto_0

    .line 2743
    :cond_6
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    goto :goto_2
.end method

.method private getFileLocation(I[I)Lorg/telegram/tgnet/TLObject;
    .locals 7
    .param p1, "index"    # I
    .param p2, "size"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3708
    if-gez p1, :cond_1

    .line 3758
    :cond_0
    :goto_0
    return-object v2

    .line 3711
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3712
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 3715
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p2, v5

    .line 3716
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    .line 3717
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3718
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 3721
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 3722
    .local v0, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v3, :cond_6

    .line 3723
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v3, :cond_3

    .line 3724
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 3726
    :cond_3
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 3727
    .local v1, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_5

    .line 3728
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 3729
    aget v2, p2, v5

    if-nez v2, :cond_4

    .line 3730
    aput v6, p2, v5

    .line 3732
    :cond_4
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 3734
    :cond_5
    aput v6, p2, v5

    goto :goto_0

    .line 3737
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_6
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v3, :cond_8

    :cond_7
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v3, :cond_b

    .line 3738
    :cond_8
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 3739
    .restart local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_a

    .line 3740
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 3741
    aget v2, p2, v5

    if-nez v2, :cond_9

    .line 3742
    aput v6, p2, v5

    .line 3744
    :cond_9
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_0

    .line 3746
    :cond_a
    aput v6, p2, v5

    goto/16 :goto_0

    .line 3748
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v3, :cond_c

    .line 3749
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    goto/16 :goto_0

    .line 3750
    :cond_c
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_0

    .line 3751
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 3752
    aget v2, p2, v5

    if-nez v2, :cond_d

    .line 3753
    aput v6, p2, v5

    .line 3755
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_0
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 3658
    if-gez p1, :cond_1

    .line 3704
    :cond_0
    :goto_0
    return-object v6

    .line 3661
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3662
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3663
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 3666
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3667
    .local v2, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3668
    .end local v2    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3669
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 3672
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getMessageFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3674
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3675
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 3678
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3679
    .local v3, "object":Ljava/lang/Object;
    instance-of v7, v3, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v7, :cond_8

    move-object v4, v3

    .line 3680
    check-cast v4, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3681
    .local v4, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_5

    .line 3682
    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3683
    :cond_5
    iget v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 3684
    new-instance v1, Ljava/io/File;

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3685
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3686
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3688
    :cond_6
    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    .line 3691
    .end local v1    # "file":Ljava/io/File;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v8, "jpg"

    invoke-static {v7, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3692
    .end local v4    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_8
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v7, :cond_0

    move-object v0, v3

    .line 3693
    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 3694
    .local v0, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_9

    .line 3695
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3696
    :cond_9
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v7, :cond_a

    .line 3697
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 3698
    .local v5, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3699
    .end local v5    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_a
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 3700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v8, "jpg"

    invoke-static {v7, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static getInstance()Lorg/telegram/ui/PhotoViewer;
    .locals 4

    .prologue
    .line 923
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    .line 924
    .local v0, "localInstance":Lorg/telegram/ui/PhotoViewer;
    if-nez v0, :cond_1

    .line 925
    const-class v3, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v3

    .line 926
    :try_start_0
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    .line 927
    if-nez v0, :cond_0

    .line 928
    new-instance v1, Lorg/telegram/ui/PhotoViewer;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .local v1, "localInstance":Lorg/telegram/ui/PhotoViewer;
    :try_start_1
    sput-object v1, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 930
    .end local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 932
    :cond_1
    return-object v0

    .line 930
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    goto :goto_0
.end method

.method private goToNext()V
    .locals 5

    .prologue
    .line 5630
    const/4 v0, 0x0

    .line 5631
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 5632
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float v0, v1, v2

    .line 5634
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 5635
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

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

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5636
    return-void
.end method

.method private goToPrev()V
    .locals 5

    .prologue
    .line 5639
    const/4 v0, 0x0

    .line 5640
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 5641
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float v0, v1, v2

    .line 5643
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 5644
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

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

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5645
    return-void
.end method

.method private onActionClick(Z)V
    .locals 7
    .param p1, "download"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5932
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v1, v1, v5

    if-nez v1, :cond_2

    .line 5989
    :cond_1
    :goto_0
    return-void

    .line 5935
    :cond_2
    const/4 v0, 0x0

    .line 5936
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_5

    .line 5937
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 5938
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5939
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5940
    const/4 v0, 0x0

    .line 5943
    :cond_3
    if-nez v0, :cond_4

    .line 5944
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 5945
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5946
    const/4 v0, 0x0

    .line 5962
    :cond_4
    :goto_1
    if-nez v0, :cond_c

    .line 5963
    if-eqz p1, :cond_1

    .line 5964
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_8

    .line 5965
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5966
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    goto :goto_0

    .line 5949
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v1, :cond_4

    .line 5950
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_6

    .line 5951
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    .line 5952
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5953
    const/4 v0, 0x0

    goto :goto_1

    .line 5956
    :cond_6
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v4, "mp4"

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5957
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5958
    const/4 v0, 0x0

    goto :goto_1

    .line 5968
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    .line 5970
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v1, :cond_1

    .line 5971
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_a

    .line 5972
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 5973
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, v6, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    goto/16 :goto_0

    .line 5975
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    .line 5978
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader;->isLoadingHttpFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 5979
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v3, "mp4"

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5981
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5987
    :cond_c
    invoke-direct {p0, v0, v6, v5}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_0
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 37
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 5687
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    .line 5929
    :cond_0
    :goto_0
    return-void

    .line 5694
    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    .line 5696
    .local v5, "aty":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v32, v0

    if-eqz v32, :cond_16

    .line 5697
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Scroller;->isFinished()Z

    move-result v32

    if-nez v32, :cond_2

    .line 5698
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5701
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v28, v32, v33

    .line 5702
    .local v28, "ts":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v29, v32, v33

    .line 5703
    .local v29, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v30, v32, v33

    .line 5704
    .local v30, "ty":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 5705
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/Components/PhotoCropView;->setAnimationProgress(F)V

    .line 5708
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v32, v0

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-nez v32, :cond_4

    .line 5709
    move/from16 v5, v30

    .line 5711
    :cond_4
    move/from16 v8, v28

    .line 5712
    .local v8, "currentScale":F
    move/from16 v10, v30

    .line 5713
    .local v10, "currentTranslationY":F
    move/from16 v9, v29

    .line 5714
    .local v9, "currentTranslationX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5764
    .end local v28    # "ts":F
    .end local v29    # "tx":F
    .end local v30    # "ty":F
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v32, v0

    if-nez v32, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_1f

    const/high16 v32, -0x40800000    # -1.0f

    cmpl-float v32, v5, v32

    if-eqz v32, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v32, v0

    if-nez v32, :cond_1f

    .line 5765
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40800000    # 4.0f

    div-float v16, v32, v33

    .line 5766
    .local v16, "maxValue":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v32, v0

    const/high16 v33, 0x42fe0000    # 127.0f

    const/high16 v34, 0x437f0000    # 255.0f

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v36

    div-float v36, v36, v16

    sub-float v35, v35, v36

    mul-float v34, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(FF)F

    move-result v33

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 5771
    .end local v16    # "maxValue":F
    :goto_2
    const/16 v25, 0x0

    .line 5772
    .local v25, "sideImage":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v32, v0

    if-nez v32, :cond_7

    .line 5773
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v33

    if-ltz v32, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v32, v0

    if-nez v32, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    move/from16 v32, v0

    if-nez v32, :cond_6

    .line 5774
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v32, v0

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    cmpl-float v32, v9, v32

    if-lez v32, :cond_20

    .line 5775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    .line 5780
    :cond_6
    :goto_3
    if-eqz v25, :cond_21

    const/16 v32, 0x1

    :goto_4
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    .line 5783
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 5784
    move/from16 v26, v9

    .line 5785
    .local v26, "tranlateX":F
    const/16 v22, 0x0

    .line 5786
    .local v22, "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 5787
    .local v4, "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v32, v0

    if-nez v32, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v32, v0

    cmpg-float v32, v26, v32

    if-gez v32, :cond_8

    .line 5788
    const/high16 v32, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v33, v0

    sub-float v33, v33, v26

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 5789
    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v4

    const v33, 0x3e99999a    # 0.3f

    mul-float v22, v32, v33

    .line 5790
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v32

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x41f00000    # 30.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    sub-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v26, v0

    .line 5793
    :cond_8
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v32

    if-eqz v32, :cond_9

    .line 5794
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5795
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5796
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v32

    const/high16 v33, 0x41f00000    # 30.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, v26

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5797
    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v22

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v33, v33, v22

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5798
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 5799
    .local v7, "bitmapWidth":I
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 5801
    .local v6, "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v7

    move/from16 v33, v0

    div-float v23, v32, v33

    .line 5802
    .local v23, "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v6

    move/from16 v33, v0

    div-float v24, v32, v33

    .line 5803
    .local v24, "scaleY":F
    cmpl-float v32, v23, v24

    if-lez v32, :cond_22

    move/from16 v17, v24

    .line 5804
    .local v17, "scale":F
    :goto_5
    int-to-float v0, v7

    move/from16 v32, v0

    mul-float v32, v32, v17

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    .line 5805
    .local v31, "width":I
    int-to-float v0, v6

    move/from16 v32, v0

    mul-float v32, v32, v17

    move/from16 v0, v32

    float-to-int v13, v0

    .line 5807
    .local v13, "height":I
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5808
    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    neg-int v0, v13

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v13}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 5809
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5810
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5813
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v13    # "height":I
    .end local v17    # "scale":F
    .end local v23    # "scaleX":F
    .end local v24    # "scaleY":F
    .end local v31    # "width":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5814
    div-float v32, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5815
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    add-float v33, v33, v34

    mul-float v32, v32, v33

    const/high16 v33, 0x41f00000    # 30.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    neg-float v0, v10

    move/from16 v33, v0

    div-float v33, v33, v8

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5816
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v32, v32, v33

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v33, v33, v22

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    .line 5817
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    .line 5818
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5819
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5822
    .end local v4    # "alpha":F
    .end local v22    # "scaleDiff":F
    .end local v26    # "tranlateX":F
    :cond_a
    move/from16 v27, v9

    .line 5823
    .local v27, "translateX":F
    const/16 v22, 0x0

    .line 5824
    .restart local v22    # "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 5825
    .restart local v4    # "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v32, v0

    cmpl-float v32, v27, v32

    if-lez v32, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v32, v0

    if-nez v32, :cond_b

    .line 5826
    const/high16 v32, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v33, v0

    sub-float v33, v27, v33

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 5827
    const v32, 0x3e99999a    # 0.3f

    mul-float v22, v4, v32

    .line 5828
    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v4, v32, v4

    .line 5829
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v27, v0

    .line 5831
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v32

    if-nez v32, :cond_23

    const/4 v12, 0x1

    .line 5832
    .local v12, "drawTextureView":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 5833
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5834
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getAdditionX()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getAdditionY()I

    move-result v34

    add-int v33, v33, v34

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5835
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5836
    sub-float v32, v8, v22

    sub-float v33, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5838
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    .line 5839
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1, v10}, Lorg/telegram/ui/Components/PhotoCropView;->setBitmapParams(FFF)V

    .line 5842
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 5843
    .restart local v7    # "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 5844
    .restart local v6    # "bitmapHeight":I
    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v32, v0

    if-eqz v32, :cond_d

    .line 5845
    int-to-float v0, v7

    move/from16 v32, v0

    int-to-float v0, v6

    move/from16 v33, v0

    div-float v20, v32, v33

    .line 5846
    .local v20, "scale1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v21, v32, v33

    .line 5847
    .local v21, "scale2":F
    sub-float v32, v20, v21

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    const v33, 0x3c23d70a    # 0.01f

    cmpl-float v32, v32, v33

    if-lez v32, :cond_d

    .line 5848
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v7

    .line 5849
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v6

    .line 5853
    .end local v20    # "scale1":F
    .end local v21    # "scale2":F
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v7

    move/from16 v33, v0

    div-float v23, v32, v33

    .line 5854
    .restart local v23    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v6

    move/from16 v33, v0

    div-float v24, v32, v33

    .line 5855
    .restart local v24    # "scaleY":F
    cmpl-float v32, v23, v24

    if-lez v32, :cond_24

    move/from16 v17, v24

    .line 5856
    .restart local v17    # "scale":F
    :goto_7
    int-to-float v0, v7

    move/from16 v32, v0

    mul-float v32, v32, v17

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    .line 5857
    .restart local v31    # "width":I
    int-to-float v0, v6

    move/from16 v32, v0

    mul-float v32, v32, v17

    move/from16 v0, v32

    float-to-int v13, v0

    .line 5859
    .restart local v13    # "height":I
    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v33

    if-eqz v32, :cond_f

    .line 5860
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5861
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v32, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    neg-int v0, v13

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v13}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 5862
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5864
    :cond_f
    if-eqz v12, :cond_11

    .line 5865
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v32, v0

    if-nez v32, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 5866
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    .line 5867
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 5868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    .line 5870
    :cond_10
    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    neg-int v0, v13

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5871
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v33, v0

    mul-float v33, v33, v4

    invoke-virtual/range {v32 .. v33}, Landroid/view/TextureView;->setAlpha(F)V

    .line 5872
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5873
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    cmpg-float v32, v32, v33

    if-gez v32, :cond_11

    .line 5874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 5875
    .local v18, "newUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    move-wide/from16 v32, v0

    sub-long v14, v18, v32

    .line 5876
    .local v14, "dt":J
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    .line 5877
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v32, v0

    long-to-float v0, v14

    move/from16 v33, v0

    const/high16 v34, 0x43480000    # 200.0f

    div-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 5878
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5879
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v33

    if-lez v32, :cond_11

    .line 5880
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 5884
    .end local v14    # "dt":J
    .end local v18    # "newUpdateTime":J
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5887
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v13    # "height":I
    .end local v17    # "scale":F
    .end local v23    # "scaleX":F
    .end local v24    # "scaleY":F
    .end local v31    # "width":I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    move/from16 v32, v0

    if-eqz v32, :cond_26

    .line 5888
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/ui/Components/RadialProgressView;->getVisibility()I

    move-result v32

    if-eqz v32, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v32

    if-nez v32, :cond_25

    :cond_13
    const/4 v11, 0x1

    .line 5892
    .local v11, "drawProgress":Z
    :goto_8
    if-eqz v11, :cond_14

    .line 5893
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5894
    div-float v32, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5895
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v32, v32, v33

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v33, v33, v22

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    .line 5896
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    .line 5897
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5898
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5901
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 5902
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v32

    if-eqz v32, :cond_15

    .line 5903
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5904
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5905
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    add-float v33, v33, v34

    mul-float v32, v32, v33

    const/high16 v33, 0x41f00000    # 30.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    add-float v32, v32, v9

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5906
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 5907
    .restart local v7    # "bitmapWidth":I
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 5909
    .restart local v6    # "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v7

    move/from16 v33, v0

    div-float v23, v32, v33

    .line 5910
    .restart local v23    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v6

    move/from16 v33, v0

    div-float v24, v32, v33

    .line 5911
    .restart local v24    # "scaleY":F
    cmpl-float v32, v23, v24

    if-lez v32, :cond_28

    move/from16 v17, v24

    .line 5912
    .restart local v17    # "scale":F
    :goto_9
    int-to-float v0, v7

    move/from16 v32, v0

    mul-float v32, v32, v17

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    .line 5913
    .restart local v31    # "width":I
    int-to-float v0, v6

    move/from16 v32, v0

    mul-float v32, v32, v17

    move/from16 v0, v32

    float-to-int v13, v0

    .line 5915
    .restart local v13    # "height":I
    const/high16 v32, 0x3f800000    # 1.0f

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5916
    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    neg-int v0, v13

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v13}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 5917
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5918
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5921
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v13    # "height":I
    .end local v17    # "scale":F
    .end local v23    # "scaleX":F
    .end local v24    # "scaleY":F
    .end local v31    # "width":I
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5922
    div-float v32, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5923
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    add-float v33, v33, v34

    mul-float v32, v32, v33

    const/high16 v33, 0x41f00000    # 30.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    neg-float v0, v10

    move/from16 v33, v0

    div-float v33, v33, v8

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5924
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    aget-object v32, v32, v33

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    .line 5925
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    aget-object v32, v32, v33

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    .line 5926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5927
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 5716
    .end local v4    # "alpha":F
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    .end local v11    # "drawProgress":Z
    .end local v12    # "drawTextureView":Z
    .end local v22    # "scaleDiff":F
    .end local v25    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    .end local v27    # "translateX":F
    :cond_16
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_18

    .line 5717
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5718
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5719
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 5720
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 5721
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    .line 5722
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/Components/PhotoCropView;->setAnimationProgress(F)V

    .line 5724
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5725
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 5727
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Scroller;->isFinished()Z

    move-result v32

    if-nez v32, :cond_1b

    .line 5728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 5729
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Scroller;->getStartX()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v33, v0

    cmpg-float v32, v32, v33

    if-gez v32, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Scroller;->getStartX()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_19

    .line 5730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Scroller;->getCurrX()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5732
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Scroller;->getStartY()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    move/from16 v33, v0

    cmpg-float v32, v32, v33

    if-gez v32, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Scroller;->getStartY()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minY:F

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_1a

    .line 5733
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Scroller;->getCurrY()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5735
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5738
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v32, v0

    if-eqz v32, :cond_1d

    .line 5739
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1e

    .line 5740
    new-instance v32, Lorg/telegram/ui/PhotoViewer$61;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$61;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5754
    :cond_1c
    :goto_a
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 5756
    :cond_1d
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 5757
    .restart local v8    # "currentScale":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5758
    .restart local v10    # "currentTranslationY":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5759
    .restart local v9    # "currentTranslationX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    move/from16 v32, v0

    if-nez v32, :cond_5

    .line 5760
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    goto/16 :goto_1

    .line 5746
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1c

    .line 5747
    new-instance v32, Lorg/telegram/ui/PhotoViewer$62;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$62;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 5768
    .restart local v8    # "currentScale":F
    .restart local v9    # "currentTranslationX":F
    .restart local v10    # "currentTranslationY":F
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v32, v0

    const/16 v33, 0xff

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 5776
    .restart local v25    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v32, v0

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v32, v32, v33

    cmpg-float v32, v9, v32

    if-gez v32, :cond_6

    .line 5777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    goto/16 :goto_3

    .line 5780
    :cond_21
    const/16 v32, 0x0

    goto/16 :goto_4

    .restart local v4    # "alpha":F
    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v22    # "scaleDiff":F
    .restart local v23    # "scaleX":F
    .restart local v24    # "scaleY":F
    .restart local v26    # "tranlateX":F
    :cond_22
    move/from16 v17, v23

    .line 5803
    goto/16 :goto_5

    .line 5831
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v23    # "scaleX":F
    .end local v24    # "scaleY":F
    .end local v26    # "tranlateX":F
    .restart local v27    # "translateX":F
    :cond_23
    const/4 v12, 0x0

    goto/16 :goto_6

    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v12    # "drawTextureView":Z
    .restart local v23    # "scaleX":F
    .restart local v24    # "scaleY":F
    :cond_24
    move/from16 v17, v23

    .line 5855
    goto/16 :goto_7

    .line 5888
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v23    # "scaleX":F
    .end local v24    # "scaleY":F
    :cond_25
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 5890
    :cond_26
    if-nez v12, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v32

    if-eqz v32, :cond_27

    const/4 v11, 0x1

    .restart local v11    # "drawProgress":Z
    :goto_b
    goto/16 :goto_8

    .end local v11    # "drawProgress":Z
    :cond_27
    const/4 v11, 0x0

    goto :goto_b

    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v11    # "drawProgress":Z
    .restart local v23    # "scaleX":F
    .restart local v24    # "scaleY":F
    :cond_28
    move/from16 v17, v23

    .line 5911
    goto/16 :goto_9
.end method

.method private onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 6
    .param p1, "object"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 5234
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    .line 5235
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 5236
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 5237
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 5238
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 5239
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 5240
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 5241
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 5242
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 5243
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 5244
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 5246
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 5247
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 5248
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v1, v1, v0

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 5246
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5251
    :cond_2
    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    .line 5252
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    if-eqz v1, :cond_3

    .line 5253
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->destroy()V

    .line 5255
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5256
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5257
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5258
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$58;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$58;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->post(Ljava/lang/Runnable;)Z

    .line 5272
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v1, :cond_4

    .line 5273
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->willHidePhotoViewer()V

    .line 5275
    :cond_4
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 5276
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 5277
    if-eqz p1, :cond_5

    .line 5278
    iget-object v1, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 5280
    :cond_5
    return-void
.end method

.method private onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 18
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p5, "index"    # I
    .param p6, "object"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3769
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    .line 3770
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3772
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 3773
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->fromCamera:Z

    .line 3774
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 3775
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 3776
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3777
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3778
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3779
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    .line 3780
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 3781
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    .line 3782
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    .line 3783
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    .line 3784
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 3785
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 3786
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 3787
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    aput-boolean v2, v3, v4

    .line 3788
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    .line 3789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    .line 3790
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 3791
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    .line 3792
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3793
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3794
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3795
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3796
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3797
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_1
    const/4 v2, 0x2

    if-ge v10, v2, :cond_1

    .line 3798
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3799
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3797
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3787
    .end local v10    # "a":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3801
    .restart local v10    # "a":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3802
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3803
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setPadding(IIII)V

    .line 3804
    if-eqz p6, :cond_7

    move-object/from16 v0, p6

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    :goto_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 3805
    if-eqz p6, :cond_8

    move-object/from16 v0, p6

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->isEvent:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isEvent:Z

    .line 3806
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3807
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3808
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3809
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3810
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3811
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    if-eqz v2, :cond_2

    .line 3812
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setVisibility(I)V

    .line 3813
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3814
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    .line 3816
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 3817
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3818
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    .line 3820
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3821
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3822
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3823
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItemAvailable:Z

    .line 3824
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3825
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3826
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 3828
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setAlpha(F)V

    .line 3829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleRightMargin(I)V

    .line 3831
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$CounterView;->setAlpha(F)V

    .line 3832
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$CounterView;->setVisibility(I)V

    .line 3834
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3835
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3836
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3838
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3839
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3840
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3843
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3844
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3845
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3846
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->timeItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3848
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setVisibility(I)V

    .line 3849
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3850
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    .line 3851
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3852
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3853
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3854
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3855
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    .line 3856
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v3, 0x7f020281

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3857
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3858
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3859
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3860
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    if-eqz v2, :cond_4

    .line 3861
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 3863
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v2, :cond_5

    .line 3864
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->setVisibility(I)V

    .line 3867
    :cond_5
    const/4 v10, 0x0

    :goto_4
    const/4 v2, 0x3

    if-ge v10, v2, :cond_9

    .line 3868
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    if-eqz v2, :cond_6

    .line 3869
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 3867
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 3804
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3805
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 3873
    :cond_9
    if-eqz p1, :cond_13

    if-nez p3, :cond_13

    .line 3874
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3875
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_a

    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    .line 3876
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 3885
    :cond_b
    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 3963
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isEvent:Z

    if-nez v2, :cond_d

    .line 3964
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    if-nez v2, :cond_28

    .line 3965
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 3966
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    .line 3967
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 3973
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 3974
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 3991
    :cond_10
    :goto_8
    return-void

    .line 3877
    :cond_11
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v2, :cond_b

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_b

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v2, :cond_12

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v2, :cond_b

    .line 3878
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 3879
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3880
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3882
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_5

    .line 3886
    :cond_13
    if-eqz p2, :cond_16

    .line 3887
    move-object/from16 v0, p6

    iget v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    .line 3888
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3889
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    iget v3, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3890
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3892
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3893
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3894
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_15

    .line 3895
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3899
    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 3900
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_6

    .line 3891
    :cond_14
    const/16 v2, 0x8

    goto :goto_9

    .line 3897
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_a

    .line 3901
    :cond_16
    if-eqz p3, :cond_1a

    .line 3902
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3904
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3906
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    .line 3907
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3908
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-nez v2, :cond_17

    .line 3909
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 3910
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v2, p5

    add-int/lit8 p5, v2, -0x1

    .line 3912
    :cond_17
    const/4 v10, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_19

    .line 3913
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    .line 3914
    .local v15, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_18

    const/4 v2, 0x0

    :goto_c
    aget-object v2, v3, v2

    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3912
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 3914
    :cond_18
    const/4 v2, 0x1

    goto :goto_c

    .line 3916
    .end local v15    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_6

    .line 3917
    :cond_1a
    if-eqz p4, :cond_c

    .line 3918
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_1b

    .line 3919
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3920
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$CounterView;->setVisibility(I)V

    .line 3921
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleRightMargin(I)V

    .line 3923
    :cond_1b
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3924
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3925
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3926
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 3928
    .local v16, "obj":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_21

    .line 3929
    check-cast v16, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .end local v16    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_20

    .line 3930
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3931
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3932
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3936
    :goto_d
    const/4 v11, 0x1

    .line 3944
    .local v11, "allowCaption":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-lt v2, v3, :cond_1f

    .line 3945
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 3946
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    .line 3947
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    .line 3948
    if-eqz v11, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->allowCaption()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_1e
    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    .line 3949
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    .line 3950
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_1f

    .line 3951
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onCreate()V

    .line 3954
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3955
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3956
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 3957
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 3958
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3959
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3960
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    goto/16 :goto_6

    .line 3934
    .end local v11    # "allowCaption":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 3937
    .restart local v16    # "obj":Ljava/lang/Object;
    :cond_21
    move-object/from16 v0, v16

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_22

    .line 3938
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3939
    const/4 v11, 0x0

    .restart local v11    # "allowCaption":Z
    goto/16 :goto_e

    .line 3941
    .end local v11    # "allowCaption":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    move-object/from16 v0, v16

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_23

    check-cast v16, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local v16    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v16

    iget v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-nez v2, :cond_23

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3942
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_24

    const/4 v11, 0x1

    .restart local v11    # "allowCaption":Z
    :goto_13
    goto/16 :goto_e

    .line 3941
    .end local v11    # "allowCaption":Z
    :cond_23
    const/16 v2, 0x8

    goto :goto_12

    .line 3942
    :cond_24
    const/4 v11, 0x0

    goto :goto_13

    .line 3946
    .restart local v11    # "allowCaption":Z
    :cond_25
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 3948
    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 3949
    :cond_27
    const/16 v2, 0x8

    goto/16 :goto_11

    .line 3969
    .end local v11    # "allowCaption":Z
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v2, :cond_d

    .line 3970
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v4, 0x0

    const/16 v5, 0x50

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto/16 :goto_7

    .line 3975
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 3976
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 3977
    .local v14, "entry":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 3978
    .local v13, "caption":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v2

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_2b

    const/4 v12, 0x1

    .line 3979
    .local v12, "allowTimeItem":Z
    :goto_14
    instance-of v2, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_2c

    move-object/from16 v17, v14

    .line 3980
    check-cast v17, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3981
    .local v17, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_2a

    .line 3982
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    .line 3987
    .end local v14    # "entry":Ljava/lang/Object;
    .end local v17    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_2a
    :goto_15
    if-eqz v12, :cond_10

    .line 3988
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->timeItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 3978
    .end local v12    # "allowTimeItem":Z
    .restart local v14    # "entry":Ljava/lang/Object;
    :cond_2b
    const/4 v12, 0x0

    goto :goto_14

    .line 3984
    .restart local v12    # "allowTimeItem":Z
    :cond_2c
    if-eqz v12, :cond_2a

    instance-of v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_2a

    .line 3985
    check-cast v14, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local v14    # "entry":Ljava/lang/Object;
    iget v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-nez v2, :cond_2d

    const/4 v12, 0x1

    :goto_16
    goto :goto_15

    :cond_2d
    const/4 v12, 0x0

    goto :goto_16
.end method

.method private onSharePressed()V
    .locals 9

    .prologue
    .line 1199
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-nez v6, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    const/4 v2, 0x0

    .line 1204
    .local v2, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 1206
    .local v5, "isVideo":Z
    :try_start_0
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_4

    .line 1207
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v5

    .line 1212
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1213
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_a

    .line 1215
    const/4 v2, 0x0

    .line 1218
    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1219
    :try_start_2
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 1225
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1226
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1227
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_7

    .line 1228
    const-string/jumbo v6, "video/mp4"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    :goto_3
    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1238
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v7, "ShareFile"

    const v8, 0x7f070673

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1246
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1247
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1221
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_3

    .line 1222
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->isEvent:Z

    if-eqz v6, :cond_6

    :cond_5
    const/4 v6, 0x1

    :goto_5
    invoke-static {v7, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 1230
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_8

    .line 1231
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1233
    :cond_8
    const-string/jumbo v6, "image/jpeg"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1240
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_9
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1241
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v6, "AppName"

    const v7, 0x7f07007d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1242
    const-string/jumbo v6, "OK"

    const v7, 0x7f0704f5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1243
    const-string/jumbo v6, "PleaseDownload"

    const v7, 0x7f07058c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1244
    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1246
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    goto :goto_4

    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    :cond_a
    move-object v2, v3

    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5392
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v9, :cond_0

    iget-wide v10, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    .line 5393
    :cond_0
    const/4 v9, 0x0

    .line 5609
    :goto_0
    return v9

    .line 5396
    :cond_1
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 5397
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v9, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->onTouch(Landroid/view/MotionEvent;)V

    .line 5398
    const/4 v9, 0x1

    goto :goto_0

    .line 5401
    :cond_2
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 5402
    const/4 v9, 0x1

    goto :goto_0

    .line 5405
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5406
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 5407
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    .line 5409
    :cond_5
    const/4 v9, 0x1

    goto :goto_0

    .line 5412
    :cond_6
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 5413
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    if-eqz v9, :cond_7

    .line 5414
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    .line 5415
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 5416
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 5417
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->checkMinMax(Z)V

    .line 5418
    const/4 v9, 0x1

    goto :goto_0

    .line 5422
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_d

    .line 5423
    :cond_8
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 5424
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 5426
    :cond_9
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 5427
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_a

    .line 5428
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5430
    :cond_a
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    if-nez v9, :cond_b

    .line 5431
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v9, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    .line 5432
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

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    .line 5433
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 5434
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    .line 5435
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    .line 5436
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    .line 5437
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    .line 5438
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 5439
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 5440
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_b

    .line 5441
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 5609
    :cond_b
    :goto_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 5443
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 5444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 5445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    .line 5446
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 5447
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 5448
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_b

    .line 5449
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 5453
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_24

    .line 5454
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 5455
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 5457
    :cond_e
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v9, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_f

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    if-nez v9, :cond_f

    .line 5458
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 5459
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

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    div-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    mul-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 5460
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5461
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5462
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5463
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 5464
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 5465
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_10

    .line 5466
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5468
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 5469
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 5470
    .local v3, "dy":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_11

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_12

    .line 5471
    :cond_11
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 5472
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_12

    .line 5473
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 5476
    :cond_12
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    instance-of v9, v9, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    if-nez v9, :cond_15

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_15

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    if-eqz v9, :cond_15

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_15

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_15

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_15

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v3, v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_15

    .line 5477
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 5478
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 5479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    .line 5480
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v9, :cond_14

    .line 5481
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 5486
    :cond_13
    :goto_2
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 5482
    :cond_14
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_13

    .line 5483
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 5484
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->toggleCheckImageView(Z)V

    goto :goto_2

    .line 5487
    :cond_15
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-eqz v9, :cond_16

    .line 5488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5489
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 5490
    :cond_16
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    if-nez v9, :cond_23

    iget-wide v10, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_23

    .line 5491
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float v4, v9, v10

    .line 5492
    .local v4, "moveDx":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v5, v9, v10

    .line 5493
    .local v5, "moveDy":F
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v9, :cond_18

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_18

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_17

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

    if-ltz v9, :cond_18

    :cond_17
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_b

    .line 5494
    :cond_18
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v9, :cond_19

    .line 5495
    const/4 v4, 0x0

    .line 5496
    const/4 v5, 0x0

    .line 5497
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 5498
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 5501
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 5502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    .line 5503
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5504
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1a

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_1b

    :cond_1a
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1c

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 5505
    :cond_1b
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v4, v9

    .line 5507
    :cond_1c
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_21

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_21

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_21

    .line 5508
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_20

    .line 5509
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5510
    const/4 v5, 0x0

    .line 5521
    :cond_1d
    :goto_3
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v9, v4

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5522
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1e

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v9, :cond_1f

    .line 5523
    :cond_1e
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5526
    :cond_1f
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 5511
    :cond_20
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1d

    .line 5512
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5513
    const/4 v5, 0x0

    goto :goto_3

    .line 5516
    :cond_21
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_22

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1d

    .line 5517
    :cond_22
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v5, v9

    goto :goto_3

    .line 5529
    .end local v4    # "moveDx":F
    .end local v5    # "moveDy":F
    :cond_23
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 5530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 5531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    goto/16 :goto_1

    .line 5534
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_b

    .line 5535
    :cond_25
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_26

    .line 5536
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->startAnimationRunnable()V

    .line 5538
    :cond_26
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-eqz v9, :cond_2d

    .line 5539
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 5540
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_27

    .line 5541
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5542
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5561
    :goto_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    goto/16 :goto_1

    .line 5543
    :cond_27
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2c

    .line 5544
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v0, v9, v10

    .line 5545
    .local v0, "atx":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v1, v9, v10

    .line 5546
    .local v1, "aty":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5547
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v0, v9

    if-gez v9, :cond_2a

    .line 5548
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5552
    :cond_28
    :goto_5
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_2b

    .line 5553
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5557
    :cond_29
    :goto_6
    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x1

    invoke-direct {p0, v9, v0, v1, v10}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_4

    .line 5549
    :cond_2a
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v0, v9

    if-lez v9, :cond_28

    .line 5550
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_5

    .line 5554
    :cond_2b
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v1, v9

    if-lez v9, :cond_29

    .line 5555
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_6

    .line 5559
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_2c
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->checkMinMax(Z)V

    goto :goto_4

    .line 5562
    :cond_2d
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-eqz v9, :cond_30

    .line 5563
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40c00000    # 6.0f

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2e

    .line 5564
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 5572
    :goto_7
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    goto/16 :goto_1

    .line 5566
    :cond_2e
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2f

    .line 5567
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 5568
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->toggleCheckImageView(Z)V

    .line 5570
    :cond_2f
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_7

    .line 5573
    :cond_30
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-eqz v9, :cond_b

    .line 5574
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5575
    .local v6, "moveToX":F
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5576
    .local v7, "moveToY":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5577
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 5578
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 5579
    const/4 v8, 0x0

    .line 5580
    .local v8, "velocity":F
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_31

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_31

    .line 5581
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 5582
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 5585
    :cond_31
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_35

    .line 5586
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_32

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_33

    :cond_32
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 5587
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->goToNext()V

    .line 5588
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 5590
    :cond_33
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_34

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_35

    :cond_34
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 5591
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->goToPrev()V

    .line 5592
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 5596
    :cond_35
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_38

    .line 5597
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5601
    :cond_36
    :goto_8
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_39

    .line 5602
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5606
    :cond_37
    :goto_9
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v7, v10}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto/16 :goto_1

    .line 5598
    :cond_38
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_36

    .line 5599
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_8

    .line 5603
    :cond_39
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_37

    .line 5604
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_9
.end method

.method private openCaptionEnter()V
    .locals 3

    .prologue
    .line 2701
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_1

    .line 2714
    :cond_0
    :goto_0
    return-void

    .line 2704
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setTag(Ljava/lang/Object;)V

    .line 2705
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboard()V

    .line 2706
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    .line 2707
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    if-eqz v0, :cond_3

    .line 2708
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GifCaption"

    const v2, 0x7f070333

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2709
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2713
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 2708
    :cond_2
    const-string/jumbo v0, "VideoCaption"

    const v2, 0x7f070745

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2711
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PhotoCaption"

    const v2, 0x7f07057b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private preparePlayer(Ljava/io/File;ZZ)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "playWhenReady"    # Z
    .param p3, "preview"    # Z

    .prologue
    .line 2812
    if-nez p3, :cond_0

    .line 2813
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    .line 2815
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 2960
    :goto_0
    return-void

    .line 2818
    :cond_1
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    .line 2819
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 2820
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    if-nez v2, :cond_2

    .line 2821
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2822
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 2823
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2825
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    .line 2826
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 2827
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2829
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    .line 2830
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    .line 2831
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setAlpha(F)V

    .line 2832
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v3, 0x7f02011a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2833
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v2, :cond_4

    .line 2834
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2835
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2836
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$37;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$37;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 2933
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_8

    .line 2934
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    .line 2935
    .local v0, "duration":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 2936
    const-wide/16 v0, 0x0

    .line 2941
    :cond_3
    :goto_1
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2942
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string/jumbo v3, "%02d:%02d / %02d:%02d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3c

    div-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x3c

    rem-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x3c

    div-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-wide/16 v6, 0x3c

    rem-long v6, v0, v6

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

    .line 2944
    .end local v0    # "duration":J
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2945
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 2946
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 2947
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2948
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2949
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2951
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    if-eqz v2, :cond_9

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2952
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2953
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2954
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-eqz v2, :cond_7

    .line 2955
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2956
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2958
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 2959
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    goto/16 :goto_0

    .line 2939
    :cond_8
    const-wide/16 v0, 0x0

    .restart local v0    # "duration":J
    goto/16 :goto_1

    .line 2951
    .end local v0    # "duration":J
    :cond_9
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private processOpenVideo(Ljava/lang/String;)V
    .locals 5
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 6534
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentLoadingVideoRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 6535
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentLoadingVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 6536
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentLoadingVideoRunnable:Ljava/lang/Runnable;

    .line 6538
    :cond_0
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 6539
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lorg/telegram/ui/PhotoViewer;->setCompressItemEnabled(ZZ)V

    .line 6540
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    .line 6541
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setVideoPath(Ljava/lang/String;)V

    .line 6542
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    .line 6543
    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    .line 6544
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6545
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->originalSize:J

    .line 6547
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$64;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/PhotoViewer$64;-><init>(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentLoadingVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6701
    return-void
.end method

.method private redraw(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 5283
    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    .line 5284
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eqz v0, :cond_0

    .line 5285
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5286
    new-instance v0, Lorg/telegram/ui/PhotoViewer$59;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$59;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5298
    :cond_0
    :goto_0
    return-void

    .line 5296
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestLayout()V

    goto :goto_0
.end method

.method private releasePlayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2963
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_0

    .line 2964
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 2965
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2968
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2972
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v1, :cond_1

    .line 2973
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 2974
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2976
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    .line 2977
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    .line 2979
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    if-eqz v1, :cond_3

    .line 2980
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    .line 2981
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v2, 0x7f02011a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2982
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2984
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    if-nez v1, :cond_4

    .line 2985
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2986
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2987
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2988
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-eqz v1, :cond_4

    .line 2989
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2990
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2993
    :cond_4
    return-void

    .line 2969
    :catch_0
    move-exception v0

    .line 2970
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private requestVideoPreview(I)V
    .locals 10
    .param p1, "request"    # I

    .prologue
    .line 6367
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_0

    .line 6368
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 6370
    :cond_0
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    if-nez v6, :cond_2

    const/4 v3, 0x1

    .line 6371
    .local v3, "wasRequestingPreview":Z
    :goto_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 6372
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    .line 6373
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 6374
    const/4 v6, 0x1

    if-ne p1, v6, :cond_a

    .line 6375
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 6376
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    .line 6377
    if-nez v3, :cond_3

    .line 6378
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    .line 6426
    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 6427
    return-void

    .line 6370
    .end local v3    # "wasRequestingPreview":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 6380
    .restart local v3    # "wasRequestingPreview":Z
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 6381
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    goto :goto_1

    .line 6384
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 6385
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 6386
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v6, :cond_5

    .line 6387
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 6388
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    const/4 v6, 0x0

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 6389
    const-string/jumbo v6, ""

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 6390
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 6391
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 6392
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v2, v7, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 6393
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "video_preview.mp4"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 6394
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    new-instance v7, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v7}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v7, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 6395
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 6396
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 6397
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 6398
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 6400
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    iput-wide v4, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 6401
    .local v4, "start":J
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    iput-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 6402
    .local v0, "end":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_6

    .line 6403
    const-wide/16 v4, 0x0

    .line 6405
    :cond_6
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_7

    .line 6406
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v0, v6

    .line 6408
    :cond_7
    sub-long v6, v0, v4

    const-wide/32 v8, 0x4c4b40

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    .line 6409
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const-wide/32 v8, 0x4c4b40

    add-long/2addr v8, v4

    iput-wide v8, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 6411
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 6412
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 6413
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 6414
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v6

    if-nez v6, :cond_9

    .line 6415
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    .line 6417
    :cond_9
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 6418
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_1

    .line 6421
    .end local v0    # "end":J
    .end local v4    # "start":J
    :cond_a
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    .line 6422
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 6423
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_1
.end method

.method private setCompressItemEnabled(ZZ)V
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    .line 6704
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 6726
    :cond_0
    :goto_0
    return-void

    .line 6707
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6710
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6711
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 6712
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 6713
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 6714
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6715
    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->compressItemAnimation:Landroid/animation/AnimatorSet;

    .line 6717
    :cond_4
    if-eqz p2, :cond_7

    .line 6718
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItemAnimation:Landroid/animation/AnimatorSet;

    .line 6719
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->compressItemAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v7, [F

    if-eqz p1, :cond_6

    move v0, v2

    :goto_2
    aput v0, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6720
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6721
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItemAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6722
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 6710
    goto :goto_1

    :cond_6
    move v0, v3

    .line 6719
    goto :goto_2

    .line 6724
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_3
.end method

.method private setCurrentCaption(Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "caption"    # Ljava/lang/CharSequence;

    .prologue
    .line 4376
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v0, :cond_4

    .line 4377
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    if-eq v0, v1, :cond_0

    .line 4378
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4379
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 4380
    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42980000    # 76.0f

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4390
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    if-eqz v0, :cond_6

    .line 4391
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4392
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4397
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4398
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 4399
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v9

    .line 4400
    .local v9, "str":Ljava/lang/CharSequence;
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4402
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4406
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4407
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4408
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4422
    .end local v9    # "str":Ljava/lang/CharSequence;
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItemAvailable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4423
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 4424
    .local v8, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayoutSize:I

    :goto_6
    add-int/lit8 v0, v0, 0x30

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 4425
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4427
    return-void

    .line 4383
    .end local v8    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eq v0, v1, :cond_0

    .line 4384
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 4385
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4387
    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayoutSize:I

    :goto_7
    add-int/lit8 v6, v6, 0x30

    int-to-float v6, v6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_7

    .line 4394
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4395
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_1

    .line 4403
    .restart local v9    # "str":Ljava/lang/CharSequence;
    :catch_0
    move-exception v7

    .line 4404
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 4407
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 4408
    :cond_8
    const/4 v0, 0x4

    goto/16 :goto_4

    .line 4410
    .end local v9    # "str":Ljava/lang/CharSequence;
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v0, :cond_a

    .line 4411
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "AddCaption"

    const v2, 0x7f07004a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4412
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "empty"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4413
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4414
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const v1, -0x4d000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 4416
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4417
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4418
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 4424
    .restart local v8    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_6
.end method

.method private setImageIndex(IZ)V
    .locals 36
    .param p1, "index"    # I
    .param p2, "init"    # Z

    .prologue
    .line 4006
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-nez v2, :cond_1

    .line 4373
    :cond_0
    :goto_0
    return-void

    .line 4009
    :cond_1
    if-nez p2, :cond_2

    .line 4010
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 4012
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4013
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4014
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4015
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    .line 4016
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v27, v0

    .line 4017
    .local v27, "prevIndex":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 4018
    const/16 v21, 0x0

    .line 4019
    .local v21, "isVideo":Z
    const/16 v28, 0x0

    .line 4021
    .local v28, "sameImage":Z
    const/16 v35, 0x0

    .line 4023
    .local v35, "videoPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 4024
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ltz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 4025
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 4028
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 4029
    .local v23, "newMessageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_d

    const/16 v28, 0x1

    .line 4030
    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 4031
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v21

    .line 4032
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isInvoice()Z

    move-result v19

    .line 4033
    .local v19, "isInvoice":Z
    if-eqz v19, :cond_e

    .line 4034
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 4035
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 4036
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 4037
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 4038
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 4039
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4040
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 4079
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_16

    .line 4080
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 4081
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 4082
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4083
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 4085
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 4086
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4087
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachGif"

    const v4, 0x7f0700ac

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4283
    .end local v19    # "isInvoice":Z
    .end local v23    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v2, :cond_7

    .line 4284
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v2, :cond_48

    .line 4285
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4290
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .line 4291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v2, :cond_8

    .line 4292
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v2, :cond_49

    .line 4293
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4299
    :cond_8
    :goto_5
    if-nez v28, :cond_b

    .line 4300
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 4301
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 4302
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4303
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 4304
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 4305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 4306
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 4307
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 4308
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 4309
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 4310
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_9

    .line 4311
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 4313
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 4315
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    .line 4316
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 4317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    .line 4318
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    .line 4319
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    .line 4320
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    .line 4321
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 4322
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    .line 4323
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 4324
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 4325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    .line 4326
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 4327
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 4328
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    .line 4329
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 4330
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_4a

    if-nez v21, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$9200(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v2

    if-eqz v2, :cond_4a

    :cond_a
    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 4331
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 4333
    :cond_b
    if-eqz v21, :cond_c

    if-eqz v35, :cond_c

    .line 4334
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v35

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    .line 4337
    :cond_c
    const/4 v2, -0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_4b

    .line 4338
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->setImages()V

    .line 4340
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_7
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 4341
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 4340
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 4029
    .end local v10    # "a":I
    .restart local v23    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_d
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 4042
    .restart local v19    # "isInvoice":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasPhotoStickers()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v2, v4

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 4043
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4044
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 4048
    :goto_9
    if-eqz v21, :cond_11

    .line 4049
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 4053
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4054
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v34

    .line 4055
    .local v34, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v34, :cond_12

    .line 4056
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4068
    .end local v34    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v14, v2, v4

    .line 4069
    .local v14, "date":J
    const-string/jumbo v2, "formatDateAtTime"

    const v3, 0x7f0707a2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 4070
    .local v16, "dateString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_15

    if-eqz v21, :cond_15

    .line 4071
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "%s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    int-to-long v8, v7

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4075
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 4076
    .local v12, "caption":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 4042
    .end local v12    # "caption":Ljava/lang/CharSequence;
    .end local v14    # "date":J
    .end local v16    # "dateString":Ljava/lang/String;
    :cond_f
    const/4 v2, 0x4

    goto/16 :goto_8

    .line 4046
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_9

    .line 4051
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_a

    .line 4058
    .restart local v34    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 4061
    .end local v34    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_13
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 4062
    .local v13, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v13, :cond_14

    .line 4063
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 4065
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 4073
    .end local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v14    # "date":J
    .restart local v16    # "dateString":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 4089
    .end local v14    # "date":J
    .end local v16    # "dateString":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v2, v3

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-nez v2, :cond_21

    .line 4090
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_1c

    .line 4091
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    if-le v2, v3, :cond_18

    .line 4092
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v6, 0x0

    .line 4093
    .local v6, "loadFromMaxId":I
    :goto_d
    const/16 v22, 0x0

    .line 4094
    .local v22, "loadIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v22

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    .line 4095
    const/16 v22, 0x1

    .line 4096
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    .line 4097
    const/4 v6, 0x0

    .line 4101
    :cond_17
    if-nez v22, :cond_1b

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_e
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 4102
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 4104
    .end local v6    # "loadFromMaxId":I
    .end local v22    # "loadIndex":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0704f6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4130
    :cond_19
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v3, 0xe10

    if-ge v2, v3, :cond_24

    .line 4131
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 4132
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 4133
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4134
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_3

    .line 4092
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto/16 :goto_d

    .line 4101
    .restart local v6    # "loadFromMaxId":I
    .restart local v22    # "loadIndex":I
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto/16 :goto_e

    .line 4106
    .end local v6    # "loadFromMaxId":I
    .end local v22    # "loadIndex":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1e

    .line 4107
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v6, 0x0

    .line 4108
    .restart local v6    # "loadFromMaxId":I
    :goto_10
    const/16 v22, 0x0

    .line 4109
    .restart local v22    # "loadIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v22

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    .line 4110
    const/16 v22, 0x1

    .line 4111
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    .line 4112
    const/4 v6, 0x0

    .line 4116
    :cond_1d
    if-nez v22, :cond_20

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_11
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 4117
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 4119
    .end local v6    # "loadFromMaxId":I
    .end local v22    # "loadIndex":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0704f6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 4107
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto/16 :goto_10

    .line 4116
    .restart local v6    # "loadFromMaxId":I
    .restart local v22    # "loadIndex":I
    :cond_20
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_11

    .line 4121
    .end local v6    # "loadFromMaxId":I
    .end local v22    # "loadIndex":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_23

    .line 4122
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4123
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachVideo"

    const v4, 0x7f0700ba

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 4125
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachPhoto"

    const v4, 0x7f0700b3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 4127
    :cond_23
    if-eqz v19, :cond_19

    .line 4128
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 4136
    :cond_24
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 4137
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 4138
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4139
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_26

    .line 4140
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_3

    .line 4138
    :cond_25
    const/16 v2, 0x8

    goto :goto_12

    .line 4142
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_3

    .line 4146
    .end local v19    # "isInvoice":Z
    .end local v23    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 4147
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4148
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4149
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    .line 4150
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 4154
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v25, v0

    .line 4155
    .local v25, "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-ltz p1, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_2a

    .line 4156
    :cond_28
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 4152
    .end local v25    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_13

    .line 4159
    .restart local v25    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4160
    if-eqz v25, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_2b

    move-object/from16 v0, v25

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v2, v3, :cond_2b

    move-object/from16 v0, v25

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2b

    .line 4161
    const/16 v28, 0x1

    .line 4163
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isEvent:Z

    if-eqz v2, :cond_2c

    .line 4164
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachPhoto"

    const v4, 0x7f0700b3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4168
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 4169
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 4170
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4171
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2e

    .line 4172
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_3

    .line 4166
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0704f6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 4170
    :cond_2d
    const/16 v2, 0x8

    goto :goto_15

    .line 4174
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_3

    .line 4176
    .end local v25    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4177
    if-ltz p1, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_31

    .line 4178
    :cond_30
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 4181
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    .line 4182
    .local v24, "object":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 4183
    .restart local v12    # "caption":Ljava/lang/CharSequence;
    const/16 v33, 0x0

    .line 4184
    .local v33, "ttl":I
    const/16 v18, 0x0

    .line 4185
    .local v18, "isFiltered":Z
    const/16 v20, 0x0

    .line 4186
    .local v20, "isPainted":Z
    const/16 v17, 0x0

    .line 4187
    .local v17, "isCropped":Z
    move-object/from16 v0, v24

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_36

    move-object/from16 v26, v24

    .line 4188
    check-cast v26, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 4189
    .local v26, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v26

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 4190
    move-object/from16 v0, v26

    iget v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    if-nez v2, :cond_35

    move-object/from16 v0, v26

    iget-wide v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->fromCamera:Z

    .line 4191
    move-object/from16 v0, v26

    iget-object v12, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 4192
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    move/from16 v21, v0

    .line 4193
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 4194
    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->ttl:I

    move/from16 v33, v0

    .line 4195
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isFiltered:Z

    move/from16 v18, v0

    .line 4196
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isPainted:Z

    move/from16 v20, v0

    .line 4197
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isCropped:Z

    move/from16 v17, v0

    .line 4224
    .end local v26    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_32
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4225
    if-eqz v21, :cond_3b

    .line 4226
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4227
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4228
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    .line 4229
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->processOpenVideo(Ljava/lang/String;)V

    .line 4230
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setVisibility(I)V

    .line 4231
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4232
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4233
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4235
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4250
    :goto_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->fromCamera:Z

    if-eqz v2, :cond_3e

    .line 4251
    if-eqz v21, :cond_3d

    .line 4252
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachVideo"

    const v4, 0x7f0700ba

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4259
    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_33

    .line 4260
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 4261
    .restart local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v13, :cond_3f

    .line 4262
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4270
    .end local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_33
    :goto_1a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_34

    .line 4271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 4274
    :cond_34
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 4275
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V

    .line 4276
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->timeItem:Landroid/widget/ImageView;

    if-eqz v33, :cond_41

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_40

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_1b
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    :goto_1c
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4277
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    if-eqz v20, :cond_43

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_42

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_1d
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    :goto_1e
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4278
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    if-eqz v17, :cond_45

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_44

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_1f
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    :goto_20
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4279
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    if-eqz v18, :cond_47

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_46

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_21
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    :goto_22
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    .line 4190
    .restart local v26    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_35
    const/4 v2, 0x0

    goto/16 :goto_16

    .line 4198
    .end local v26    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_36
    move-object/from16 v0, v24

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_39

    move-object/from16 v11, v24

    .line 4199
    check-cast v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 4200
    .local v11, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_37

    .line 4201
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v21

    .line 4202
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto/16 :goto_17

    .line 4203
    :cond_37
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_38

    .line 4204
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v30

    .line 4205
    .local v30, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto/16 :goto_17

    .line 4206
    .end local v30    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_38
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 4207
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 4208
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    goto/16 :goto_17

    .line 4211
    .end local v11    # "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_39
    move-object/from16 v0, v24

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_32

    move-object/from16 v29, v24

    .line 4212
    check-cast v29, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 4213
    .local v29, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_3a

    .line 4214
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 4218
    :goto_23
    move-object/from16 v0, v29

    iget-object v12, v0, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    .line 4219
    move-object/from16 v0, v29

    iget v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->ttl:I

    move/from16 v33, v0

    .line 4220
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->isFiltered:Z

    move/from16 v18, v0

    .line 4221
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->isPainted:Z

    move/from16 v20, v0

    .line 4222
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->isCropped:Z

    move/from16 v17, v0

    goto/16 :goto_17

    .line 4216
    :cond_3a
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto :goto_23

    .line 4238
    .end local v29    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setVisibility(I)V

    .line 4239
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4240
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    .line 4241
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4242
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4244
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4246
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4248
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    .line 4254
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachPhoto"

    const v4, 0x7f0700b3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 4257
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0704f6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 4264
    .restart local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v34

    .line 4265
    .restart local v34    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v34, :cond_33

    .line 4266
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, v34

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 4276
    .end local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v34    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_40
    const v2, -0xc25212

    goto/16 :goto_1b

    :cond_41
    const/4 v2, 0x0

    goto/16 :goto_1c

    .line 4277
    :cond_42
    const v2, -0xc25212

    goto/16 :goto_1d

    :cond_43
    const/4 v2, 0x0

    goto/16 :goto_1e

    .line 4278
    :cond_44
    const v2, -0xc25212

    goto/16 :goto_1f

    :cond_45
    const/4 v2, 0x0

    goto/16 :goto_20

    .line 4279
    :cond_46
    const v2, -0xc25212

    goto/16 :goto_21

    :cond_47
    const/4 v2, 0x0

    goto/16 :goto_22

    .line 4287
    .end local v12    # "caption":Ljava/lang/CharSequence;
    .end local v17    # "isCropped":Z
    .end local v18    # "isFiltered":Z
    .end local v20    # "isPainted":Z
    .end local v24    # "object":Ljava/lang/Object;
    .end local v33    # "ttl":I
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    goto/16 :goto_4

    .line 4295
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    goto/16 :goto_5

    .line 4330
    :cond_4a
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 4344
    :cond_4b
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 4345
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, v27

    if-le v0, v2, :cond_4c

    .line 4346
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    .line 4347
    .local v31, "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 4348
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 4349
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 4351
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v32, v2, v3

    .line 4352
    .local v32, "tempProgress":Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 4353
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x2

    aput-object v32, v2, v3

    .line 4354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 4356
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 4357
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0

    .line 4358
    .end local v31    # "temp":Lorg/telegram/messenger/ImageReceiver;
    .end local v32    # "tempProgress":Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
    :cond_4c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, v27

    if-ge v0, v2, :cond_0

    .line 4359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    .line 4360
    .restart local v31    # "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 4361
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 4362
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 4364
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v32, v2, v3

    .line 4365
    .restart local v32    # "tempProgress":Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 4366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x1

    aput-object v32, v2, v3

    .line 4367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 4369
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 4370
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0
.end method

.method private setImages()V
    .locals 2

    .prologue
    .line 3998
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v0, :cond_0

    .line 3999
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 4000
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 4001
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 4003
    :cond_0
    return-void
.end method

.method private setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 34
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "index"    # I

    .prologue
    .line 4520
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 4521
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 4522
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 4523
    if-ltz p2, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p2

    if-ge v0, v3, :cond_16

    .line 4524
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    .line 4525
    .local v28, "object":Ljava/lang/Object;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v31, v0

    .line 4526
    .local v31, "size":I
    const/16 v30, 0x0

    .line 4527
    .local v30, "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 4528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    .line 4530
    :cond_0
    if-nez v30, :cond_1

    .line 4531
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, p2

    invoke-interface {v3, v5, v7, v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 4533
    :cond_1
    const/4 v6, 0x0

    .line 4534
    .local v6, "path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4535
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v12, 0x0

    .line 4536
    .local v12, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v10, 0x0

    .line 4537
    .local v10, "imageSize":I
    const/4 v14, 0x0

    .line 4538
    .local v14, "filter":Ljava/lang/String;
    const/16 v26, 0x0

    .line 4539
    .local v26, "isVideo":Z
    move-object/from16 v0, v28

    instance-of v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_5

    move-object/from16 v29, v28

    .line 4540
    check-cast v29, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 4541
    .local v29, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    move/from16 v26, v0

    .line 4542
    move-object/from16 v0, v29

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v3, :cond_4

    .line 4543
    move-object/from16 v0, v29

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 4544
    move-object/from16 v0, v29

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 4549
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 4591
    .end local v29    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_2
    :goto_1
    if-eqz v4, :cond_11

    .line 4592
    const/4 v5, 0x0

    const-string/jumbo v6, "d"

    .end local v6    # "path":Ljava/lang/String;
    if-eqz v30, :cond_f

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-direct {v7, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_2
    if-nez v30, :cond_10

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%d_%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    const/4 v13, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    invoke-static {v3, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;I)V

    .line 4652
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v10    # "imageSize":I
    .end local v12    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v14    # "filter":Ljava/lang/String;
    .end local v26    # "isVideo":Z
    .end local v28    # "object":Ljava/lang/Object;
    .end local v30    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v31    # "size":I
    :goto_4
    return-void

    .line 4546
    .restart local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v10    # "imageSize":I
    .restart local v12    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .restart local v14    # "filter":Ljava/lang/String;
    .restart local v26    # "isVideo":Z
    .restart local v28    # "object":Ljava/lang/Object;
    .restart local v29    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v30    # "placeHolder":Landroid/graphics/Bitmap;
    .restart local v31    # "size":I
    :cond_3
    move-object/from16 v0, v29

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 4547
    move-object/from16 v0, v29

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_0

    .line 4551
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vthumb://"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v5, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 4553
    .end local v29    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_5
    move-object/from16 v0, v28

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v3, :cond_c

    move-object/from16 v25, v28

    .line 4554
    check-cast v25, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 4555
    .local v25, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v5, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4556
    :cond_6
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_7

    .line 4557
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v12, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_1

    .line 4559
    :cond_7
    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    goto/16 :goto_1

    .line 4561
    :cond_8
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v5, "gif"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_9

    .line 4562
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4563
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 4564
    const-string/jumbo v14, "d"

    goto/16 :goto_1

    .line 4565
    :cond_9
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_a

    .line 4566
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v32

    .line 4567
    .local v32, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v32

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4568
    move-object/from16 v0, v32

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4569
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 4570
    goto/16 :goto_1

    .end local v32    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_a
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 4571
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v5, "gif"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4572
    const-string/jumbo v14, "d"

    .line 4576
    :goto_5
    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    goto/16 :goto_1

    .line 4574
    :cond_b
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    .line 4578
    .end local v25    # "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_c
    move-object/from16 v0, v28

    instance-of v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_2

    move-object/from16 v29, v28

    .line 4579
    check-cast v29, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 4580
    .local v29, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    move-object/from16 v0, v29

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 4581
    move-object/from16 v0, v29

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    .line 4589
    :goto_6
    const-string/jumbo v14, "d"

    goto/16 :goto_1

    .line 4582
    :cond_d
    move-object/from16 v0, v29

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_e

    .line 4583
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4584
    move-object/from16 v0, v29

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    goto :goto_6

    .line 4586
    :cond_e
    move-object/from16 v0, v29

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 4587
    move-object/from16 v0, v29

    iget v10, v0, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    goto :goto_6

    .line 4592
    .end local v6    # "path":Ljava/lang/String;
    .end local v29    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 4593
    .restart local v6    # "path":Ljava/lang/String;
    :cond_11
    if-eqz v12, :cond_13

    .line 4594
    const/4 v13, 0x0

    if-eqz v30, :cond_12

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-direct {v15, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_7
    const/16 v16, 0x0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, p1

    move/from16 v18, v10

    invoke-virtual/range {v11 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_4

    :cond_12
    const/4 v15, 0x0

    goto :goto_7

    .line 4596
    :cond_13
    if-eqz v30, :cond_14

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-direct {v8, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_8
    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object v7, v14

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_14
    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0201e4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_8

    :cond_15
    const/4 v8, 0x0

    goto :goto_8

    .line 4599
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v6    # "path":Ljava/lang/String;
    .end local v10    # "imageSize":I
    .end local v12    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v14    # "filter":Ljava/lang/String;
    .end local v26    # "isVideo":Z
    .end local v28    # "object":Ljava/lang/Object;
    .end local v30    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v31    # "size":I
    :cond_16
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 4602
    :cond_17
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v31, v0

    .line 4603
    .local v31, "size":[I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(I[I)Lorg/telegram/tgnet/TLObject;

    move-result-object v16

    .line 4605
    .local v16, "fileLocation":Lorg/telegram/tgnet/TLObject;
    if-eqz v16, :cond_26

    .line 4606
    const/16 v27, 0x0

    .line 4607
    .local v27, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 4608
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v27, Lorg/telegram/messenger/MessageObject;

    .line 4610
    .restart local v27    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_18
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 4611
    if-eqz v27, :cond_19

    .line 4612
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V

    .line 4615
    :cond_19
    if-eqz v27, :cond_1d

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4616
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 4617
    move-object/from16 v0, v27

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v3, :cond_1c

    move-object/from16 v0, v27

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 4618
    const/16 v30, 0x0

    .line 4619
    .restart local v30    # "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1a

    .line 4620
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    .line 4622
    :cond_1a
    move-object/from16 v0, v27

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v33

    .line 4623
    .local v33, "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v30, :cond_1b

    .end local v16    # "fileLocation":Lorg/telegram/tgnet/TLObject;
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_9
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v20, v0

    const-string/jumbo v21, "b"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_4

    :cond_1b
    const/16 v19, 0x0

    goto :goto_9

    .line 4625
    .end local v30    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v33    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v16    # "fileLocation":Lorg/telegram/tgnet/TLObject;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020211

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 4627
    :cond_1d
    if-eqz v27, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_1e

    .line 4628
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 4629
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 4631
    :cond_1e
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 4632
    const/16 v30, 0x0

    .line 4633
    .restart local v30    # "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1f

    .line 4634
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    .line 4636
    :cond_1f
    const/4 v3, 0x0

    aget v3, v31, v3

    if-nez v3, :cond_20

    .line 4637
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v31, v3

    .line 4639
    :cond_20
    if-eqz v27, :cond_22

    move-object/from16 v0, v27

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v33

    .line 4640
    .restart local v33    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :goto_a
    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v30, :cond_23

    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_b
    if-eqz v33, :cond_24

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v20, v0

    :goto_c
    const-string/jumbo v21, "b"

    const/4 v3, 0x0

    aget v22, v31, v3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-nez v3, :cond_21

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/PhotoViewer;->isEvent:Z

    if-eqz v3, :cond_25

    :cond_21
    const/16 v24, 0x1

    :goto_d
    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_4

    .line 4639
    .end local v33    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_22
    const/16 v33, 0x0

    goto :goto_a

    .line 4640
    .restart local v33    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_23
    const/16 v19, 0x0

    goto :goto_b

    :cond_24
    const/16 v20, 0x0

    goto :goto_c

    :cond_25
    const/16 v24, 0x0

    goto :goto_d

    .line 4643
    .end local v27    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v30    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v33    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_26
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 4644
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 4645
    const/4 v3, 0x0

    aget v3, v31, v3

    if-nez v3, :cond_27

    .line 4646
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 4648
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020211

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4
.end method

.method private setScaleToFill()V
    .locals 9

    .prologue
    .line 1252
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    int-to-float v1, v7

    .line 1253
    .local v1, "bitmapWidth":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v7

    int-to-float v3, v7

    .line 1254
    .local v3, "containerWidth":F
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v7

    int-to-float v0, v7

    .line 1255
    .local v0, "bitmapHeight":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v7

    int-to-float v2, v7

    .line 1256
    .local v2, "containerHeight":F
    div-float v7, v2, v0

    div-float v8, v3, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1257
    .local v5, "scaleFit":F
    mul-float v7, v1, v5

    float-to-int v7, v7

    int-to-float v6, v7

    .line 1258
    .local v6, "width":F
    mul-float v7, v0, v5

    float-to-int v7, v7

    int-to-float v4, v7

    .line 1259
    .local v4, "height":F
    div-float v7, v3, v6

    div-float v8, v2, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 1260
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v7}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 1261
    return-void
.end method

.method private showQualityView(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/high16 v10, 0x42400000    # 48.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6466
    if-eqz p1, :cond_0

    .line 6467
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->previousCompression:I

    .line 6469
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 6470
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6472
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    .line 6473
    if-eqz p1, :cond_2

    .line 6474
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    .line 6475
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43180000    # 152.0f

    .line 6476
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    .line 6477
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/high16 v5, 0x42d00000    # 104.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 6475
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6487
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$63;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$63;-><init>(Lorg/telegram/ui/PhotoViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6528
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6529
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6530
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 6531
    return-void

    .line 6480
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    .line 6481
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43260000    # 166.0f

    .line 6482
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43260000    # 166.0f

    .line 6483
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    .line 6484
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/high16 v5, 0x42ec0000    # 118.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 6481
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private switchToEditMode(I)V
    .locals 23
    .param p1, "mode"    # I

    .prologue
    .line 3123
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$9200(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3577
    :cond_0
    :goto_0
    return-void

    .line 3126
    :cond_1
    if-nez p1, :cond_e

    .line 3127
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3128
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_4

    .line 3129
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v12

    .line 3130
    .local v12, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v11

    .line 3132
    .local v11, "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v12

    div-float v19, v2, v3

    .line 3133
    .local v19, "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v11

    div-float v20, v2, v3

    .line 3134
    .local v20, "scaleY":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v12

    div-float v16, v2, v3

    .line 3135
    .local v16, "newScaleX":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v11

    div-float v17, v2, v3

    .line 3136
    .local v17, "newScaleY":F
    cmpl-float v2, v19, v20

    if-lez v2, :cond_6

    move/from16 v18, v20

    .line 3137
    .local v18, "scale":F
    :goto_1
    cmpl-float v2, v16, v17

    if-lez v2, :cond_7

    move/from16 v15, v17

    .line 3139
    .local v15, "newScale":F
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    if-nez v2, :cond_9

    .line 3140
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v14, v2

    .line 3141
    .local v14, "minSide":F
    int-to-float v2, v12

    div-float v19, v14, v2

    .line 3142
    int-to-float v2, v11

    div-float v20, v14, v2

    .line 3143
    cmpl-float v2, v19, v20

    if-lez v2, :cond_8

    move/from16 v13, v19

    .line 3145
    .local v13, "fillScale":F
    :goto_3
    div-float v2, v13, v18

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 3146
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float/2addr v2, v15

    div-float/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 3151
    .end local v13    # "fillScale":F
    .end local v14    # "minSide":F
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 3152
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 3153
    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 3159
    :cond_2
    :goto_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 3160
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 3162
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 3163
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 3166
    .end local v11    # "bitmapHeight":I
    .end local v12    # "bitmapWidth":I
    .end local v15    # "newScale":F
    .end local v16    # "newScaleX":F
    .end local v17    # "newScaleY":F
    .end local v18    # "scale":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    :cond_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 3167
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 3168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42400000    # 48.0f

    .line 3169
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    .line 3170
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/16 v21, 0x0

    aput v21, v7, v8

    .line 3171
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3168
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3187
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3188
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$39;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$39;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .restart local v11    # "bitmapHeight":I
    .restart local v12    # "bitmapWidth":I
    .restart local v16    # "newScaleX":F
    .restart local v17    # "newScaleY":F
    .restart local v19    # "scaleX":F
    .restart local v20    # "scaleY":F
    :cond_6
    move/from16 v18, v19

    .line 3136
    goto/16 :goto_1

    .restart local v18    # "scale":F
    :cond_7
    move/from16 v15, v16

    .line 3137
    goto/16 :goto_2

    .restart local v14    # "minSide":F
    .restart local v15    # "newScale":F
    :cond_8
    move/from16 v13, v20

    .line 3143
    goto/16 :goto_3

    .line 3148
    .end local v14    # "minSide":F
    :cond_9
    div-float v2, v15, v18

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    goto/16 :goto_4

    .line 3154
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 3155
    const/high16 v2, 0x42b80000    # 92.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    goto/16 :goto_5

    .line 3156
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 3157
    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    goto/16 :goto_5

    .line 3173
    .end local v11    # "bitmapHeight":I
    .end local v12    # "bitmapWidth":I
    .end local v15    # "newScale":F
    .end local v16    # "newScaleX":F
    .end local v17    # "newScaleY":F
    .end local v18    # "scale":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 3174
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    .line 3175
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 3176
    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v5

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x433a0000    # 186.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    .line 3177
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3175
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_6

    .line 3179
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 3180
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->shutdown()V

    .line 3181
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 3182
    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v5

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42fc0000    # 126.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 3183
    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v5

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42fc0000    # 126.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    .line 3184
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3181
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_6

    .line 3244
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_e
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_12

    .line 3245
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    if-nez v2, :cond_f

    .line 3246
    new-instance v2, Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    .line 3247
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 3248
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v22, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3249
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$40;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$40;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setDelegate(Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;)V

    .line 3273
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->onAppear()V

    .line 3275
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string/jumbo v3, "Crop"

    const v4, 0x7f0701d9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3276
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const v3, -0xae420d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3278
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 3279
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3280
    .local v9, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3281
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3282
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_10

    .line 3283
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3285
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_11

    .line 3286
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3289
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3292
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$41;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$41;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3362
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 3363
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_12
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_15

    .line 3364
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v2, :cond_13

    .line 3365
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 3366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$42;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$42;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3374
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$43;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$43;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    const/high16 v3, 0x433a0000    # 186.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3400
    :cond_13
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 3401
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3402
    .restart local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3404
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_14

    .line 3405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3406
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3408
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$44;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$44;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3472
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 3473
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_15
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 3474
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    if-nez v2, :cond_16

    .line 3475
    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Components/PhotoPaintView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 3476
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3477
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$45;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$45;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3484
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$46;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$46;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3495
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v2

    const/high16 v3, 0x42fc0000    # 126.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setTranslationY(F)V

    .line 3496
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    const/high16 v3, 0x42fc0000    # 126.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3499
    :cond_16
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 3500
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3501
    .restart local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3502
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3504
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_17

    .line 3505
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3507
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_18

    .line 3508
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3509
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_a

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3511
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_b

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3512
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3513
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3514
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$47;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$47;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 3169
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 3176
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 3183
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 3286
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3287
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3289
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3405
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3406
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3408
    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3508
    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3509
    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3511
    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
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

    .line 3597
    if-eqz p1, :cond_0

    .line 3598
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 3599
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v1, :cond_0

    .line 3600
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3601
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3602
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3606
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 3607
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 3608
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3610
    if-eqz p2, :cond_7

    .line 3611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3612
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3613
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_5

    move v1, v2

    :goto_1
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3614
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3615
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    if-eqz p1, :cond_6

    :goto_2
    aput v2, v5, v7

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3617
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    .line 3618
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3619
    if-nez p1, :cond_2

    .line 3620
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$48;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$48;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3637
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3638
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 3655
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_3
    :goto_3
    return-void

    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_4
    move v1, v3

    .line 3612
    goto :goto_0

    :cond_5
    move v1, v3

    .line 3613
    goto :goto_1

    :cond_6
    move v2, v3

    .line 3615
    goto :goto_2

    .line 3640
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_9

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    .line 3641
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3642
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3643
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3645
    :cond_8
    if-nez p1, :cond_3

    .line 3646
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 3647
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v1, :cond_3

    .line 3648
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3649
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3650
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v1, v3

    .line 3640
    goto :goto_4

    :cond_a
    move v1, v3

    .line 3641
    goto :goto_5

    :cond_b
    move v2, v3

    .line 3643
    goto :goto_6
.end method

.method private toggleCheckImageView(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 3580
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3581
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3582
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3583
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_0

    .line 3584
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_3

    move v2, v3

    :goto_1
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3586
    :cond_0
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_1

    .line 3587
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_4

    move v2, v3

    :goto_2
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3588
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_5

    move v2, v3

    :goto_3
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3590
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    if-eqz p1, :cond_6

    :goto_4
    aput v3, v6, v8

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3591
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3592
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3593
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3594
    return-void

    :cond_2
    move v2, v4

    .line 3582
    goto :goto_0

    :cond_3
    move v2, v4

    .line 3584
    goto :goto_1

    :cond_4
    move v2, v4

    .line 3587
    goto :goto_2

    :cond_5
    move v2, v4

    .line 3588
    goto :goto_3

    :cond_6
    move v3, v4

    .line 3590
    goto :goto_4
.end method

.method private updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 2996
    const/4 v0, 0x0

    .line 2997
    .local v0, "caption":Ljava/lang/CharSequence;
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_2

    .line 2998
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 3004
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 3005
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 3009
    :goto_1
    return-void

    .line 2999
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-nez v1, :cond_0

    .line 3001
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_0

    .line 3002
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto :goto_0

    .line 3007
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateMinMax(F)V
    .locals 5
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    .line 5322
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 5323
    .local v1, "maxW":I
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x2

    .line 5324
    .local v0, "maxH":I
    if-lez v1, :cond_1

    .line 5325
    neg-int v2, v1

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5326
    int-to-float v2, v1

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    .line 5330
    :goto_0
    if-lez v0, :cond_2

    .line 5331
    neg-int v2, v0

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5332
    int-to-float v2, v0

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    .line 5336
    :goto_1
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 5337
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    .line 5338
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    .line 5339
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5340
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitHeight()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5342
    :cond_0
    return-void

    .line 5328
    :cond_1
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    goto :goto_0

    .line 5334
    :cond_2
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    goto :goto_1
.end method

.method private updateSelectedCount()V
    .locals 2

    .prologue
    .line 3762
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-nez v0, :cond_0

    .line 3766
    :goto_0
    return-void

    .line 3765
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$CounterView;->setCount(I)V

    goto :goto_0
.end method

.method private updateVideoInfo()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/16 v9, 0x10e

    const/16 v8, 0x5a

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 6314
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v6, :cond_0

    .line 6364
    :goto_0
    return-void

    .line 6318
    :cond_0
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-nez v6, :cond_5

    .line 6319
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020274

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6330
    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    .line 6335
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_b

    .line 6336
    :cond_2
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_3

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_9

    :cond_3
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    .line 6337
    .local v5, "width":I
    :goto_2
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_4

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_a

    :cond_4
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    .line 6338
    .local v0, "height":I
    :goto_3
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->originalSize:J

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    .line 6347
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_10

    .line 6348
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    .line 6352
    :goto_5
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_11

    .line 6353
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    .line 6358
    :goto_6
    const-string/jumbo v6, "%dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6359
    .local v3, "videoDimension":Ljava/lang/String;
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    div-long/2addr v6, v12

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 6360
    .local v1, "minutes":I
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    div-long/2addr v6, v12

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit8 v7, v1, 0x3c

    sub-int v2, v6, v7

    .line 6361
    .local v2, "seconds":I
    const-string/jumbo v6, "%d:%02d, ~%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6362
    .local v4, "videoTimeSize":Ljava/lang/String;
    const-string/jumbo v6, "%s, %s"

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    .line 6363
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v6, :cond_12

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v7, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 6320
    .end local v0    # "height":I
    .end local v1    # "minutes":I
    .end local v2    # "seconds":I
    .end local v3    # "videoDimension":Ljava/lang/String;
    .end local v4    # "videoTimeSize":Ljava/lang/String;
    .end local v5    # "width":I
    :cond_5
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-ne v6, v10, :cond_6

    .line 6321
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020275

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 6322
    :cond_6
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-ne v6, v11, :cond_7

    .line 6323
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020276

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 6324
    :cond_7
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 6325
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020277

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 6326
    :cond_8
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 6327
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020273

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 6336
    :cond_9
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    goto/16 :goto_2

    .line 6337
    .restart local v5    # "width":I
    :cond_a
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    goto/16 :goto_3

    .line 6340
    .end local v5    # "width":I
    :cond_b
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_c

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_e

    :cond_c
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    .line 6341
    .restart local v5    # "width":I
    :goto_8
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_d

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_f

    :cond_d
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    .line 6343
    .restart local v0    # "height":I
    :goto_9
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    iget-wide v8, p0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    add-long/2addr v6, v8

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    .line 6344
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    const v8, 0x8000

    div-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    goto/16 :goto_4

    .line 6340
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_e
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    goto :goto_8

    .line 6341
    .restart local v5    # "width":I
    :cond_f
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    goto :goto_9

    .line 6350
    .restart local v0    # "height":I
    :cond_10
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    goto/16 :goto_5

    .line 6355
    :cond_11
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    goto/16 :goto_6

    .line 6363
    .restart local v1    # "minutes":I
    .restart local v2    # "seconds":I
    .restart local v3    # "videoDimension":Ljava/lang/String;
    .restart local v4    # "videoTimeSize":Ljava/lang/String;
    :cond_12
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    goto/16 :goto_7
.end method

.method private updateVideoPlayerTime()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x3c

    .line 2786
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v3, :cond_1

    .line 2787
    const-string/jumbo v2, "00:00 / 00:00"

    .line 2806
    .local v2, "newText":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2807
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2809
    :cond_0
    return-void

    .line 2789
    .end local v2    # "newText":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 2790
    .local v0, "current":J
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    .line 2791
    .local v4, "total":J
    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    cmp-long v3, v0, v6

    if-eqz v3, :cond_3

    .line 2792
    iget-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2793
    long-to-float v3, v4

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    float-to-long v4, v3

    .line 2794
    long-to-float v3, v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v6

    long-to-float v7, v4

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    float-to-long v0, v3

    .line 2795
    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 2796
    move-wide v0, v4

    .line 2799
    :cond_2
    div-long/2addr v0, v8

    .line 2800
    div-long/2addr v4, v8

    .line 2801
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
    goto/16 :goto_0

    .line 2803
    .end local v2    # "newText":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "00:00 / 00:00"

    .restart local v2    # "newText":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private updateWidthHeightBitrateForCompression()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 6430
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    if-lt v3, v4, :cond_0

    .line 6431
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    .line 6433
    :cond_0
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    .line 6436
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    packed-switch v3, :pswitch_data_0

    .line 6451
    const v2, 0x186a00

    .line 6452
    .local v2, "targetBitrate":I
    const/high16 v0, 0x44a00000    # 1280.0f

    .line 6455
    .local v0, "maxSize":F
    :goto_0
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    if-le v3, v4, :cond_2

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    int-to-float v3, v3

    div-float v1, v0, v3

    .line 6456
    .local v1, "scale":F
    :goto_1
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    .line 6457
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    .line 6458
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    if-eqz v3, :cond_1

    .line 6459
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    .line 6460
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-long v4, v3

    iput-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    .line 6463
    .end local v0    # "maxSize":F
    .end local v1    # "scale":F
    .end local v2    # "targetBitrate":I
    :cond_1
    return-void

    .line 6438
    :pswitch_0
    const/high16 v0, 0x43d80000    # 432.0f

    .line 6439
    .restart local v0    # "maxSize":F
    const v2, 0x61a80

    .line 6440
    .restart local v2    # "targetBitrate":I
    goto :goto_0

    .line 6442
    .end local v0    # "maxSize":F
    .end local v2    # "targetBitrate":I
    :pswitch_1
    const/high16 v0, 0x44200000    # 640.0f

    .line 6443
    .restart local v0    # "maxSize":F
    const v2, 0xdbba0

    .line 6444
    .restart local v2    # "targetBitrate":I
    goto :goto_0

    .line 6446
    .end local v0    # "maxSize":F
    .end local v2    # "targetBitrate":I
    :pswitch_2
    const/high16 v0, 0x44540000    # 848.0f

    .line 6447
    .restart local v0    # "maxSize":F
    const v2, 0x10c8e0

    .line 6448
    .restart local v2    # "targetBitrate":I
    goto :goto_0

    .line 6455
    :cond_2
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    int-to-float v3, v3

    div-float v1, v0, v3

    goto :goto_1

    .line 6436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public closePhoto(ZZ)V
    .locals 32
    .param p1, "animated"    # Z
    .param p2, "fromEditMode"    # Z

    .prologue
    .line 4963
    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 4964
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 4965
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/PhotoViewer$53;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$53;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/PhotoPaintView;->maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 5211
    :cond_0
    :goto_0
    return-void

    .line 4974
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 4975
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 4977
    :cond_2
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V

    goto :goto_0

    .line 4980
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->getTag()Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_4

    .line 4981
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_0

    .line 4985
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    .line 4986
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 4987
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4993
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 4994
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 4995
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    .line 4996
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 4997
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 5002
    :cond_6
    :goto_2
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    .line 5005
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->checkAnimation()Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 5008
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hideActionMode()Z

    move-result v24

    if-eqz v24, :cond_8

    if-eqz p2, :cond_0

    .line 5012
    :cond_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 5013
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 5014
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 5015
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5016
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5017
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5018
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5019
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5020
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5021
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5022
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5023
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5024
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 5026
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 5028
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 5029
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/VelocityTracker;->recycle()V

    .line 5030
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 5032
    :cond_9
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v27, v0

    invoke-interface/range {v24 .. v27}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v16

    .line 5036
    .local v16, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    if-eqz p1, :cond_1b

    .line 5037
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 5038
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 5039
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5041
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5043
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 5044
    .local v15, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 5045
    .local v11, "drawRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v17

    .line 5046
    .local v17, "orientation":I
    const/4 v4, 0x0

    .line 5047
    .local v4, "animatedOrientation":I
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 5048
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v4

    .line 5050
    :cond_a
    if-eqz v4, :cond_b

    .line 5051
    move/from16 v17, v4

    .line 5053
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 5054
    if-eqz v16, :cond_12

    .line 5055
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    move/from16 v24, v0

    if-eqz v24, :cond_11

    const/16 v24, 0x1

    :goto_3
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 5056
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v11

    .line 5057
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5058
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5059
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5066
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5068
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v19, v24, v25

    .line 5069
    .local v19, "scaleX":F
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_13

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_5
    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v20, v24, v25

    .line 5070
    .local v20, "scaleY":F
    cmpl-float v24, v19, v20

    if-lez v24, :cond_14

    move/from16 v18, v20

    .line 5071
    .local v18, "scale2":F
    :goto_6
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v21, v24, v18

    .line 5072
    .local v21, "width":F
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v14, v24, v18

    .line 5073
    .local v14, "height":F
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v21

    const/high16 v25, 0x40000000    # 2.0f

    div-float v22, v24, v25

    .line 5074
    .local v22, "xPos":F
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_15

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_7
    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v14

    const/high16 v25, 0x40000000    # 2.0f

    div-float v23, v24, v25

    .line 5075
    .local v23, "yPos":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v25, v0

    add-float v25, v25, v22

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 5076
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v25, v0

    add-float v25, v25, v23

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 5077
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 5078
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 5080
    if-eqz v16, :cond_18

    .line 5081
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 5082
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v25

    sub-int v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 5083
    .local v7, "clipHorizontal":I
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v25

    sub-int v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 5085
    .local v9, "clipVertical":I
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v10, v0, [I

    .line 5086
    .local v10, "coords2":[I
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5087
    const/16 v24, 0x1

    aget v25, v10, v24

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_16

    const/16 v24, 0x0

    :goto_8
    sub-int v24, v25, v24

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sub-int v24, v24, v25

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    move/from16 v25, v0

    add-int v8, v24, v25

    .line 5088
    .local v8, "clipTop":I
    if-gez v8, :cond_c

    .line 5089
    const/4 v8, 0x0

    .line 5091
    :cond_c
    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v24, v24, v25

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    add-int v25, v25, v24

    const/16 v24, 0x1

    aget v24, v10, v24

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v26, v26, v24

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v27, 0x15

    move/from16 v0, v24

    move/from16 v1, v27

    if-lt v0, v1, :cond_17

    const/16 v24, 0x0

    :goto_9
    sub-int v24, v26, v24

    sub-int v24, v25, v24

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    move/from16 v25, v0

    add-int v6, v24, v25

    .line 5092
    .local v6, "clipBottom":I
    if-gez v6, :cond_d

    .line 5093
    const/4 v6, 0x0

    .line 5096
    :cond_d
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5097
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5099
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v26

    aput v26, v24, v25

    .line 5100
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v26

    aput v26, v24, v25

    .line 5101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v26

    aput v26, v24, v25

    .line 5102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v26

    aput v26, v24, v25

    .line 5103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 5104
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 5105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x6

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 5106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x7

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 5108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    aput v26, v24, v25

    .line 5109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    aput v26, v24, v25

    .line 5110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 5111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 5112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x4

    int-to-float v0, v7

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 5113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x5

    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 5114
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x6

    int-to-float v0, v6

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 5115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x7

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 5117
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    const-string/jumbo v27, "animationProgress"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    .line 5118
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 5119
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 5120
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    .line 5117
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5132
    .end local v6    # "clipBottom":I
    .end local v7    # "clipHorizontal":I
    .end local v8    # "clipTop":I
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    :goto_a
    new-instance v24, Lorg/telegram/ui/PhotoViewer$54;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$54;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 5143
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5144
    new-instance v24, Lorg/telegram/ui/PhotoViewer$55;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$55;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 5159
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_e

    .line 5160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5162
    :cond_e
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 5203
    .end local v4    # "animatedOrientation":I
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v14    # "height":F
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "orientation":I
    .end local v18    # "scale2":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    .end local v21    # "width":F
    .end local v22    # "xPos":F
    .end local v23    # "yPos":F
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    .line 5204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 5205
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 5206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    check-cast v24, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 5208
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 5209
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->cancelButtonPressed()Z

    goto/16 :goto_0

    .line 4989
    .end local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v16    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :catch_0
    move-exception v12

    .line 4990
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4998
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 4999
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 5000
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    goto/16 :goto_2

    .line 5055
    .restart local v4    # "animatedOrientation":I
    .restart local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v11    # "drawRegion":Landroid/graphics/Rect;
    .restart local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v16    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .restart local v17    # "orientation":I
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 5061
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 5062
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5063
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5064
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 5069
    .restart local v19    # "scaleX":F
    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_5

    .restart local v20    # "scaleY":F
    :cond_14
    move/from16 v18, v19

    .line 5070
    goto/16 :goto_6

    .line 5074
    .restart local v14    # "height":F
    .restart local v18    # "scale2":F
    .restart local v21    # "width":F
    .restart local v22    # "xPos":F
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 5087
    .restart local v7    # "clipHorizontal":I
    .restart local v9    # "clipVertical":I
    .restart local v10    # "coords2":[I
    .restart local v23    # "yPos":F
    :cond_16
    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_8

    .line 5091
    .restart local v8    # "clipTop":I
    :cond_17
    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_9

    .line 5123
    .end local v7    # "clipHorizontal":I
    .end local v8    # "clipTop":I
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    :cond_18
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_19

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_c
    add-int v13, v25, v24

    .line 5124
    .local v13, "h":I
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 5125
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v25, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 5126
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v25, v24

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v27, v0

    const-string/jumbo v28, "translationY"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v24, v0

    const/16 v31, 0x0

    cmpl-float v24, v24, v31

    if-ltz v24, :cond_1a

    int-to-float v0, v13

    move/from16 v24, v0

    :goto_d
    aput v24, v29, v30

    .line 5127
    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    aput-object v24, v25, v26

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 5128
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v25, v24

    .line 5124
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_a

    .line 5123
    .end local v13    # "h":I
    :cond_19
    const/16 v24, 0x0

    goto/16 :goto_c

    .line 5126
    .restart local v13    # "h":I
    :cond_1a
    neg-int v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    goto :goto_d

    .line 5164
    .end local v4    # "animatedOrientation":I
    .end local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v13    # "h":I
    .end local v14    # "height":F
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "orientation":I
    .end local v18    # "scale2":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    .end local v21    # "width":F
    .end local v22    # "xPos":F
    .end local v23    # "yPos":F
    :cond_1b
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5165
    .restart local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string/jumbo v27, "scaleX"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const v30, 0x3f666666    # 0.9f

    aput v30, v28, v29

    .line 5166
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string/jumbo v27, "scaleY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const v30, 0x3f666666    # 0.9f

    aput v30, v28, v29

    .line 5167
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 5168
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 5169
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    .line 5165
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5171
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 5172
    new-instance v24, Lorg/telegram/ui/PhotoViewer$56;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$56;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 5187
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5188
    new-instance v24, Lorg/telegram/ui/PhotoViewer$57;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$57;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 5198
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1c

    .line 5199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5201
    :cond_1c
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_b

    .line 5117
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public destroyPhotoViewer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5214
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    .line 5231
    :cond_0
    :goto_0
    return-void

    .line 5217
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 5219
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5220
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 5221
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5223
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5227
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v2, :cond_3

    .line 5228
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 5230
    :cond_3
    sput-object v4, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    goto :goto_0

    .line 5224
    :catch_0
    move-exception v0

    .line 5225
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 36
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 942
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 943
    const/4 v2, 0x0

    aget-object v24, p2, v2

    check-cast v24, Ljava/lang/String;

    .line 944
    .local v24, "location":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    .line 947
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 1196
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 944
    .restart local v10    # "a":I
    .restart local v24    # "location":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 951
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 952
    const/4 v2, 0x0

    aget-object v24, p2, v2

    check-cast v24, Ljava/lang/String;

    .line 953
    .restart local v24    # "location":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_2
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    .line 956
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 957
    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 958
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    goto :goto_1

    .line 953
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 963
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_6
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 964
    const/4 v2, 0x0

    aget-object v24, p2, v2

    check-cast v24, Ljava/lang/String;

    .line 965
    .restart local v24    # "location":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_3
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 967
    const/4 v2, 0x1

    aget-object v29, p2, v2

    check-cast v29, Ljava/lang/Float;

    .line 968
    .local v29, "progress":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    .line 965
    .end local v29    # "progress":Ljava/lang/Float;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 971
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_8
    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 972
    const/4 v2, 0x4

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 973
    .local v21, "guid":I
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 974
    .local v15, "did":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-ne v2, v15, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v0, v21

    if-ne v2, v0, :cond_0

    .line 975
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    .line 977
    .local v20, "fromCache":Z
    const/16 v30, -0x1

    .line 978
    .local v30, "setToImage":I
    const/4 v2, 0x5

    aget-object v28, p2, v2

    check-cast v28, Ljava/util/ArrayList;

    .line 979
    .local v28, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Photo;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 985
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_4
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_d

    .line 986
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 987
    .local v27, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v27, :cond_9

    move-object/from16 v0, v27

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v2, :cond_9

    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-nez v2, :cond_a

    .line 985
    :cond_9
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 990
    :cond_a
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v3, 0x280

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v32

    .line 991
    .local v32, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v32, :cond_9

    .line 992
    const/4 v2, -0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_b

    .line 993
    const/4 v13, 0x0

    .local v13, "b":I
    :goto_6
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_b

    .line 994
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 995
    .local v31, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v31

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v2, v3, :cond_c

    move-object/from16 v0, v31

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 1001
    .end local v13    # "b":I
    .end local v31    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 993
    .restart local v13    # "b":I
    .restart local v31    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1006
    .end local v13    # "b":I
    .end local v27    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v31    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v32    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 1011
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 1012
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 1013
    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_f

    .line 1014
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 1021
    :goto_8
    if-eqz v20, :cond_0

    .line 1022
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v4, 0x0

    const/16 v5, 0x50

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto/16 :goto_1

    .line 1009
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_7

    .line 1016
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1019
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto :goto_8

    .line 1025
    .end local v10    # "a":I
    .end local v15    # "did":I
    .end local v20    # "fromCache":Z
    .end local v21    # "guid":I
    .end local v28    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Photo;>;"
    .end local v30    # "setToImage":I
    :cond_10
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_16

    .line 1026
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 1027
    .local v34, "uid":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_0

    .line 1028
    :cond_11
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_13

    .line 1029
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 1039
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    if-eqz v2, :cond_14

    .line 1040
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    .line 1041
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 1042
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    .line 1033
    :cond_13
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_12

    .line 1034
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto :goto_9

    .line 1043
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1044
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_15

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0704f6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1047
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f0704f6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1051
    .end local v34    # "uid":J
    :cond_16
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_31

    .line 1052
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 1053
    .restart local v34    # "uid":J
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1054
    .restart local v21    # "guid":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_0

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_0

    .line 1055
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 1056
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_19

    const/16 v23, 0x0

    .line 1057
    .local v23, "loadIndex":I
    :goto_a
    const/4 v2, 0x2

    aget-object v12, p2, v2

    check-cast v12, Ljava/util/ArrayList;

    .line 1058
    .local v12, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v2, 0x5

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v3, v23

    .line 1059
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-eqz v2, :cond_2b

    .line 1060
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-nez v23, :cond_18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 1061
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    goto/16 :goto_1

    .line 1056
    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v23    # "loadIndex":I
    :cond_19
    const/16 v23, 0x1

    goto :goto_a

    .line 1064
    .restart local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v23    # "loadIndex":I
    :cond_1a
    const/16 v17, -0x1

    .line 1066
    .local v17, "foundIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 1068
    .local v14, "currentMessage":Lorg/telegram/messenger/MessageObject;
    const/4 v11, 0x0

    .line 1069
    .local v11, "added":I
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1e

    .line 1070
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MessageObject;

    .line 1071
    .local v25, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_1d

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1b

    .line 1076
    move/from16 v17, v11

    .line 1078
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    .line 1069
    :cond_1c
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1080
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1082
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1c

    .line 1083
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v17, v2, v11

    goto :goto_c

    .line 1088
    .end local v25    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_1e
    if-nez v11, :cond_20

    if-nez v23, :cond_1f

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_20

    .line 1089
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 1090
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    .line 1093
    :cond_20
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_23

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1096
    const/4 v10, 0x0

    :goto_d
    const/4 v2, 0x2

    if-ge v10, v2, :cond_21

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1096
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 1101
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1102
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 1103
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_22

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v17, v2, -0x1

    .line 1107
    :cond_22
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_1

    .line 1110
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_26

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v6, 0x0

    .line 1112
    .local v6, "loadFromMaxId":I
    :goto_e
    if-nez v23, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v23

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 1113
    const/16 v23, 0x1

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 1115
    const/4 v6, 0x0

    .line 1128
    :cond_24
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v23

    if-nez v2, :cond_0

    .line 1129
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 1130
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_29

    .line 1131
    if-nez v23, :cond_28

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_10
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    .line 1111
    .end local v6    # "loadFromMaxId":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto :goto_e

    .line 1119
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v6, 0x0

    .line 1120
    .restart local v6    # "loadFromMaxId":I
    :goto_11
    if-nez v23, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v23

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 1121
    const/16 v23, 0x1

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 1123
    const/4 v6, 0x0

    goto/16 :goto_f

    .line 1119
    .end local v6    # "loadFromMaxId":I
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto :goto_11

    .line 1131
    .restart local v6    # "loadFromMaxId":I
    :cond_28
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_10

    .line 1133
    :cond_29
    if-nez v23, :cond_2a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_12
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_12

    .line 1138
    .end local v6    # "loadFromMaxId":I
    .end local v10    # "a":I
    .end local v11    # "added":I
    .end local v14    # "currentMessage":Lorg/telegram/messenger/MessageObject;
    .end local v17    # "foundIndex":I
    :cond_2b
    const/4 v11, 0x0

    .line 1139
    .restart local v11    # "added":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MessageObject;

    .line 1140
    .restart local v25    # "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v3, v3, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1141
    add-int/lit8 v11, v11, 0x1

    .line 1142
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v3, :cond_2d

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v3, v3, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1145
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_14

    .line 1150
    .end local v25    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_2f

    .line 1151
    if-nez v11, :cond_0

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 1153
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto/16 :goto_1

    .line 1156
    :cond_2f
    if-eqz v11, :cond_30

    .line 1157
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v22, v0

    .line 1158
    .local v22, "index":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 1159
    add-int v2, v22, v11

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_1

    .line 1161
    .end local v22    # "index":I
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 1162
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto/16 :goto_1

    .line 1167
    .end local v11    # "added":I
    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v21    # "guid":I
    .end local v23    # "loadIndex":I
    .end local v34    # "uid":J
    :cond_31
    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_32

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_1

    .line 1171
    :cond_32
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_36

    .line 1172
    const/4 v2, 0x0

    aget-object v26, p2, v2

    check-cast v26, Lorg/telegram/messenger/MessageObject;

    .line 1173
    .local v26, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    if-eqz v2, :cond_33

    .line 1174
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_1

    .line 1177
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    if-eqz v2, :cond_35

    .line 1178
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 1179
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v2

    if-nez v2, :cond_34

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    goto/16 :goto_1

    :cond_34
    const/4 v2, 0x0

    goto :goto_15

    .line 1180
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v26

    if-ne v0, v2, :cond_0

    .line 1181
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1184
    .end local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_36
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 1185
    const/4 v2, 0x0

    aget-object v26, p2, v2

    check-cast v26, Lorg/telegram/messenger/MessageObject;

    .line 1186
    .restart local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v26

    if-ne v0, v2, :cond_0

    .line 1187
    const/4 v2, 0x1

    aget-object v16, p2, v2

    check-cast v16, Ljava/lang/String;

    .line 1188
    .local v16, "finalPath":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1189
    .local v18, "finalSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-eqz v2, :cond_0

    .line 1190
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1192
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_1
.end method

.method public getAnimationValue()F
    .locals 1

    .prologue
    .line 5682
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    return v0
.end method

.method public isMuteVideo()Z
    .locals 1

    .prologue
    .line 3994
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return v0
.end method

.method public isShowingImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/String;

    .prologue
    .line 4667
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2
    .param p1, "object"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 4655
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingImage(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)Z
    .locals 2
    .param p1, "object"    # Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .prologue
    .line 4663
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z
    .locals 4
    .param p1, "object"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 4659
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v0, v1, :cond_0

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
    .line 5318
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .line 6075
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 6100
    :goto_0
    return v2

    .line 6078
    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 6079
    goto :goto_0

    .line 6081
    :cond_3
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v3, v3, v10

    if-nez v3, :cond_8

    .line 6082
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 6083
    .local v0, "atx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 6084
    .local v1, "aty":F
    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 6085
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 6086
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 6090
    :cond_4
    :goto_1
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_7

    .line 6091
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 6095
    :cond_5
    :goto_2
    invoke-direct {p0, v9, v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 6099
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    goto :goto_0

    .line 6087
    .restart local v0    # "atx":F
    .restart local v1    # "aty":F
    :cond_6
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 6088
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_1

    .line 6092
    :cond_7
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    .line 6093
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_2

    .line 6097
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_8
    invoke-direct {p0, v10, v8, v8, v2}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 6105
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5993
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
    .line 6018
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 6019
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 6020
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    float-to-int v8, v8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 6021
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->postInvalidate()V

    .line 6023
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 6014
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5308
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    .line 5309
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 5315
    :cond_0
    :goto_0
    return-void

    .line 5312
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5313
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 5301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->redraw(I)V

    .line 5302
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 5303
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 5305
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
    .line 6008
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5999
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x1

    .line 6028
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    if-eqz v6, :cond_1

    move v4, v5

    .line 6070
    :cond_0
    :goto_0
    return v4

    .line 6031
    :cond_1
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v6, :cond_5

    .line 6032
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    move v0, v4

    .line 6033
    .local v0, "drawTextureView":Z
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v6, v6, v5

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    .line 6034
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$9200(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v1

    .line 6035
    .local v1, "state":I
    if-lez v1, :cond_3

    if-gt v1, v10, :cond_3

    .line 6036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 6037
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 6038
    .local v3, "y":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_3

    .line 6039
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_3

    .line 6040
    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 6041
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto :goto_0

    .end local v0    # "drawTextureView":Z
    .end local v1    # "state":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    move v0, v5

    .line 6032
    goto :goto_1

    .line 6046
    .restart local v0    # "drawTextureView":Z
    :cond_3
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    if-nez v6, :cond_4

    move v5, v4

    :cond_4
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    goto :goto_0

    .line 6047
    .end local v0    # "drawTextureView":Z
    :cond_5
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v6, :cond_7

    .line 6048
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    if-eqz v5, :cond_6

    .line 6049
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->callOnClick()Z

    goto/16 :goto_0

    .line 6051
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/CheckBox;->performClick()Z

    goto/16 :goto_0

    .line 6053
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 6054
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$9200(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v1

    .line 6055
    .restart local v1    # "state":I
    if-lez v1, :cond_0

    if-gt v1, v10, :cond_0

    .line 6056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 6057
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 6058
    .restart local v3    # "y":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    .line 6059
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_0

    .line 6060
    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 6061
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0

    .line 6065
    .end local v1    # "state":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_9
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 6066
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->isCurrentVideo:Z

    if-eqz v5, :cond_0

    .line 6067
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->callOnClick()Z

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 6003
    const/4 v0, 0x0

    return v0
.end method

.method public openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .locals 13
    .param p2, "index"    # I
    .param p3, "dialogId"    # J
    .param p5, "mergeDialogId"    # J
    .param p7, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;IJJ",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4683
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move-object/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .locals 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "dialogId"    # J
    .param p4, "mergeDialogId"    # J
    .param p6, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .prologue
    .line 4675
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p6

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z
    .locals 30
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p5, "index"    # I
    .param p6, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .param p7, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .param p8, "dialogId"    # J
    .param p10, "mDialogId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            "JJ)Z"
        }
    .end annotation

    .prologue
    .line 4720
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-nez v4, :cond_1

    if-nez p6, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->checkAnimation()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 4721
    :cond_1
    const/4 v4, 0x0

    .line 4959
    :goto_0
    return v4

    .line 4724
    :cond_2
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v10

    .line 4725
    .local v10, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    if-nez v10, :cond_3

    if-nez p4, :cond_3

    .line 4726
    const/4 v4, 0x0

    goto :goto_0

    .line 4728
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    .line 4729
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/WindowManager;

    .line 4730
    .local v27, "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->attachedToWindow:Z

    if-eqz v4, :cond_4

    .line 4732
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4739
    :cond_4
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x63

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4740
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_b

    .line 4741
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v5, -0x7ffefef8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4748
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x110

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4749
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4750
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 4751
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4757
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    .line 4758
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 4760
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "Of"

    const v6, 0x7f0704f6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4761
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4762
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4763
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4764
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4765
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4766
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4767
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4768
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4769
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4771
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 4772
    move-wide/from16 v0, p10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    .line 4773
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    .line 4775
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_5

    .line 4776
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4779
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    .line 4780
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 4782
    if-eqz v10, :cond_12

    .line 4783
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 4784
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 4785
    if-eqz p1, :cond_6

    .line 4786
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :cond_6
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 4789
    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    .line 4791
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v18

    .line 4792
    .local v18, "drawRegion":Landroid/graphics/Rect;
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v22

    .line 4793
    .local v22, "orientation":I
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v11

    .line 4794
    .local v11, "animatedOrientation":I
    if-eqz v11, :cond_7

    .line 4795
    move/from16 v22, v11

    .line 4798
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 4799
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    .line 4800
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 4801
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 4802
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4804
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setAlpha(F)V

    .line 4805
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotX(F)V

    .line 4806
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotY(F)V

    .line 4807
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 4808
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 4809
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    int-to-float v5, v5

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 4810
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v5, v5

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 4811
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 4812
    .local v21, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4813
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4814
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4816
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    div-float v24, v4, v5

    .line 4817
    .local v24, "scaleX":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_d

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_4
    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    div-float v25, v4, v5

    .line 4818
    .local v25, "scaleY":F
    cmpl-float v4, v24, v25

    if-lez v4, :cond_e

    move/from16 v23, v25

    .line 4819
    .local v23, "scale":F
    :goto_5
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    mul-float v26, v4, v23

    .line 4820
    .local v26, "width":F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    mul-float v20, v4, v23

    .line 4821
    .local v20, "height":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float v4, v4, v26

    const/high16 v5, 0x40000000    # 2.0f

    div-float v28, v4, v5

    .line 4822
    .local v28, "xPos":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_f

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_6
    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v4, v4, v20

    const/high16 v5, 0x40000000    # 2.0f

    div-float v29, v4, v5

    .line 4823
    .local v29, "yPos":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 4824
    .local v14, "clipHorizontal":I
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 4826
    .local v16, "clipVertical":I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .line 4827
    .local v17, "coords2":[I
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4828
    const/4 v4, 0x1

    aget v5, v17, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_10

    const/4 v4, 0x0

    :goto_7
    sub-int v4, v5, v4

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    add-int v15, v4, v5

    .line 4829
    .local v15, "clipTop":I
    if-gez v15, :cond_8

    .line 4830
    const/4 v15, 0x0

    .line 4832
    :cond_8
    iget v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, v4

    const/4 v4, 0x1

    aget v4, v17, v4

    iget-object v6, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_11

    const/4 v4, 0x0

    :goto_8
    sub-int v4, v6, v4

    sub-int v4, v5, v4

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    add-int v13, v4, v5

    .line 4833
    .local v13, "clipBottom":I
    if-gez v13, :cond_9

    .line 4834
    const/4 v13, 0x0

    .line 4836
    :cond_9
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 4837
    move/from16 v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 4839
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v6

    aput v6, v4, v5

    .line 4840
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v6

    aput v6, v4, v5

    .line 4841
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v6

    aput v6, v4, v5

    .line 4842
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v6

    aput v6, v4, v5

    .line 4843
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x4

    int-to-float v6, v14

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 4844
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x5

    int-to-float v6, v15

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 4845
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x6

    int-to-float v6, v13

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 4846
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getRadius()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    .line 4848
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aput v23, v4, v5

    .line 4849
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aput v23, v4, v5

    .line 4850
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aput v28, v4, v5

    .line 4851
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aput v29, v4, v5

    .line 4852
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4853
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4854
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4855
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4857
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationProgress(F)V

    .line 4858
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 4859
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setAlpha(F)V

    .line 4861
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4862
    .local v12, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v7, "animationProgress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    .line 4863
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    .line 4864
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2

    .line 4865
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    .line 4862
    invoke-virtual {v12, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4868
    new-instance v4, Lorg/telegram/ui/PhotoViewer$49;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/PhotoViewer$49;-><init>(Lorg/telegram/ui/PhotoViewer;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4905
    const-wide/16 v4, 0xc8

    invoke-virtual {v12, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4906
    new-instance v4, Lorg/telegram/ui/PhotoViewer$50;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoViewer$50;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v12, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 4922
    new-instance v4, Lorg/telegram/ui/PhotoViewer$51;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Lorg/telegram/ui/PhotoViewer$51;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4930
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_a

    .line 4931
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4933
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    new-instance v5, Lorg/telegram/ui/PhotoViewer$52;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/PhotoViewer$52;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    invoke-static {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->access$11902(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4959
    .end local v11    # "animatedOrientation":I
    .end local v12    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v13    # "clipBottom":I
    .end local v14    # "clipHorizontal":I
    .end local v15    # "clipTop":I
    .end local v16    # "clipVertical":I
    .end local v17    # "coords2":[I
    .end local v18    # "drawRegion":Landroid/graphics/Rect;
    .end local v20    # "height":F
    .end local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "orientation":I
    .end local v23    # "scale":F
    .end local v24    # "scaleX":F
    .end local v25    # "scaleY":F
    .end local v26    # "width":F
    .end local v28    # "xPos":F
    .end local v29    # "yPos":F
    :goto_9
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4746
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 4752
    :catch_0
    move-exception v19

    .line 4753
    .local v19, "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4754
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4801
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v11    # "animatedOrientation":I
    .restart local v18    # "drawRegion":Landroid/graphics/Rect;
    .restart local v22    # "orientation":I
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 4817
    .restart local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v24    # "scaleX":F
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_4

    .restart local v25    # "scaleY":F
    :cond_e
    move/from16 v23, v24

    .line 4818
    goto/16 :goto_5

    .line 4822
    .restart local v20    # "height":F
    .restart local v23    # "scale":F
    .restart local v26    # "width":F
    .restart local v28    # "xPos":F
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 4828
    .restart local v14    # "clipHorizontal":I
    .restart local v16    # "clipVertical":I
    .restart local v17    # "coords2":[I
    .restart local v29    # "yPos":F
    :cond_10
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_7

    .line 4832
    .restart local v15    # "clipTop":I
    :cond_11
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_8

    .line 4941
    .end local v11    # "animatedOrientation":I
    .end local v14    # "clipHorizontal":I
    .end local v15    # "clipTop":I
    .end local v16    # "clipVertical":I
    .end local v17    # "coords2":[I
    .end local v18    # "drawRegion":Landroid/graphics/Rect;
    .end local v20    # "height":F
    .end local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "orientation":I
    .end local v23    # "scale":F
    .end local v24    # "scaleX":F
    .end local v25    # "scaleY":F
    .end local v26    # "width":F
    .end local v28    # "xPos":F
    .end local v29    # "yPos":F
    :cond_12
    if-eqz p4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_13

    .line 4942
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_14

    .line 4943
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v5, -0x7ffeff00

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4949
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x110

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4950
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4951
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4952
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 4955
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 4956
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setAlpha(F)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 4957
    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    goto/16 :goto_9

    .line 4947
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_a

    .line 4733
    :catch_1
    move-exception v4

    goto/16 :goto_1

    .line 4862
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 4863
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 4864
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .locals 12
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 4679
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v6, p2

    move-object v7, v1

    move-wide v10, v8

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z
    .locals 15
    .param p2, "index"    # I
    .param p3, "type"    # I
    .param p4, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .param p5, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4687
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move/from16 v0, p3

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    .line 4688
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 4689
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 4690
    .local v14, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4691
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 4692
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    const v3, 0x7f020028

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4693
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 4694
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 4701
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4703
    .end local v14    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v2, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v2

    return v2

    .line 4696
    .restart local v14    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 4697
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    const v3, 0x7f020103

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4698
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 4699
    const/4 v2, 0x0

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public setAnimationValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 5677
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    .line 5678
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5679
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 27
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 2698
    :goto_0
    return-void

    .line 1271
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    .line 1272
    new-instance v2, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090007

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    .line 1274
    sget-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 1275
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    sput-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1276
    sget-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1277
    sget-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1278
    sget-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020149

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1279
    sget-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02021d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1282
    :cond_1
    new-instance v2, Landroid/widget/Scroller;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    .line 1284
    new-instance v2, Lorg/telegram/ui/PhotoViewer$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer$2;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1422
    new-instance v2, Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ClippingImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationValues([[F)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v4, 0x28

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1426
    new-instance v2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1429
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFitsSystemWindows(Z)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$3;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/16 v3, 0x500

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setSystemUiVisibility(I)V

    .line 1446
    :cond_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x63

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1452
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_a

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v3, -0x7ffefef8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1461
    :goto_1
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1462
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_b

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    :goto_2
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_c

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    :goto_3
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 1464
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_d

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    :goto_4
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_e

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x40ffffff    # 7.9999995f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200bc

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 1469
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_3

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1471
    .local v9, "back":Landroid/graphics/drawable/Drawable;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 1472
    .local v22, "themePrefs":Landroid/content/SharedPreferences;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1474
    const-string/jumbo v2, "chatHeaderGradient"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 1475
    .local v24, "val":I
    if-lez v24, :cond_3

    .line 1477
    packed-switch v24, :pswitch_data_0

    .line 1488
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1490
    .local v13, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_6
    const-string/jumbo v2, "chatHeaderGradientColor"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1491
    .local v14, "gradColor":I
    const/4 v2, 0x2

    new-array v10, v2, [I

    const/4 v2, 0x0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    aput v3, v10, v2

    const/4 v2, 0x1

    aput v14, v10, v2

    .line 1492
    .local v10, "colors":[I
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12, v13, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1493
    .local v12, "gd":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1497
    .end local v9    # "back":Landroid/graphics/drawable/Drawable;
    .end local v10    # "colors":[I
    .end local v12    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v14    # "gradColor":I
    .end local v22    # "themePrefs":Landroid/content/SharedPreferences;
    .end local v24    # "val":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1500
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$4;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1763
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v18

    .line 1765
    .local v18, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/16 v2, 0xd

    const v3, 0x7f0200ea

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1767
    const/4 v2, 0x0

    const v3, 0x7f0200c3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1768
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    const-string/jumbo v4, "OpenInExternalApp"

    const v5, 0x7f070509

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1769
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    const-string/jumbo v4, "ShowAllMedia"

    const v5, 0x7f070686

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1770
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    const-string/jumbo v4, "ShareFile"

    const v5, 0x7f070673

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1771
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    const-string/jumbo v4, "SaveToGallery"

    const v5, 0x7f070614

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1772
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    const-string/jumbo v4, "Delete"

    const v5, 0x7f0701ff

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1773
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x14

    const-string/jumbo v4, "GoToMessage"

    const v5, 0x7f070336

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1774
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    .line 1775
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1778
    new-instance v2, Lorg/telegram/ui/PhotoViewer$5;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$5;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    .line 1784
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

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

    .line 1785
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1789
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$6;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 1799
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 1801
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 1802
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x2

    new-instance v4, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 1803
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 1805
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    .line 1806
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const v3, 0x7f02023c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1809
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v4, 0x32

    const/4 v5, -0x1

    const/16 v6, 0x35

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$7;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1817
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    .line 1818
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1822
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1824
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x42700000    # 60.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1827
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    .line 1828
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1831
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41c80000    # 25.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1837
    new-instance v2, Lorg/telegram/ui/Components/SeekBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    .line 1838
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    const v3, 0x66ffffff

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$8;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    .line 1851
    new-instance v2, Lorg/telegram/ui/PhotoViewer$9;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$9;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    .line 1911
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1914
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$10;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1941
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1943
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1944
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1947
    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1949
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v3, 0x7f020057

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setBackgroundResource(I)V

    .line 1950
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1951
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v4, 0x36

    const/16 v5, 0x36

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1953
    new-instance v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 1954
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    .line 1956
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setTranslationY(F)V

    .line 1957
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1958
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1959
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$11;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$12;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1976
    new-instance v2, Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTranslationY(F)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setVisibility(I)V

    .line 1979
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setBackgroundColor(I)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-object/from16 v26, v0

    const/4 v2, -0x1

    const/high16 v3, 0x428c0000    # 70.0f

    const/16 v4, 0x53

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1982
    new-instance v2, Lorg/telegram/ui/PhotoViewer$13;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$13;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    .line 1998
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2001
    new-instance v2, Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    .line 2002
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$14;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setDelegate(Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-object/from16 v26, v0

    const/4 v2, -0x1

    const/high16 v3, 0x42680000    # 58.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    const/high16 v8, 0x42b00000    # 88.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2050
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    .line 2051
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2052
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_f

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    :goto_7
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_10

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    :goto_8
    invoke-static {v4, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2053
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_11

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsFloatingPencilColor:I

    :goto_9
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2055
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    const v3, 0x7f020103

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v2, 0x38

    const/high16 v3, 0x42600000    # 56.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_12

    const/4 v4, 0x3

    :goto_a
    or-int/lit8 v4, v4, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41600000    # 14.0f

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerViewSendButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$15;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2070
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    .line 2072
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayoutSize:I

    int-to-float v3, v3

    const/16 v4, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42700000    # 60.0f

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2074
    new-instance v2, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    .line 2075
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x42960000    # 75.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 2076
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    .line 2077
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2078
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2081
    :cond_4
    const/16 v21, 0x1

    .line 2082
    .local v21, "step":I
    const/16 v17, 0x64

    .line 2083
    .local v17, "max":I
    const/16 v19, 0x1

    .line 2084
    .local v19, "min":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoQuality:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2086
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoQuality:I

    mul-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->barQualityValue:I

    .line 2087
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2089
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2090
    .local v23, "tvQuality":Landroid/widget/TextView;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2091
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2092
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->barQualityValue:I

    const/16 v4, 0x64

    if-le v2, v4, :cond_13

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2093
    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2094
    const/4 v2, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2097
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$16;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2124
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    .line 2125
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/4 v2, -0x2

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x51

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42080000    # 34.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2128
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    .line 2129
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const v3, 0x7f0201fd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2131
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2132
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v4, 0x46

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$17;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2140
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    .line 2141
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2142
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const v3, 0x7f020200

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2143
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2144
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const/16 v4, 0x46

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2145
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$18;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2152
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    .line 2153
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2154
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const v3, 0x7f020207

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2155
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2156
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const/16 v4, 0x46

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2157
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$19;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2164
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    .line 2165
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2167
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v4, 0x46

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$20;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2176
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    .line 2177
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2178
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2179
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/16 v4, 0x46

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2180
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$21;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$21;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2188
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->timeItem:Landroid/widget/ImageView;

    .line 2189
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->timeItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2190
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->timeItem:Landroid/widget/ImageView;

    const v3, 0x7f020206

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2191
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->timeItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2192
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->itemsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->timeItem:Landroid/widget/ImageView;

    const/16 v4, 0x46

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->timeItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$22;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$22;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2364
    new-instance v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 2365
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 2366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    .line 2367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 2368
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2369
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$23;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$23;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$24;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$24;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2389
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    .line 2390
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const v3, -0xc2c2c3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2395
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const-string/jumbo v3, "Reset"

    const v4, 0x7f0701dc

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2398
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$25;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2406
    new-instance v2, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 2407
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 2409
    new-instance v15, Lorg/telegram/ui/PhotoViewer$26;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/telegram/ui/PhotoViewer$26;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    .line 2428
    .local v15, "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 2432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2433
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2434
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2435
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 2436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2437
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2438
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2439
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 2441
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 2442
    .local v16, "manager":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v20

    .line 2444
    .local v20, "rotation":I
    new-instance v2, Lorg/telegram/ui/PhotoViewer$27;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02023a

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lorg/telegram/ui/PhotoViewer$27;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    .line 2450
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setDrawBackground(Z)V

    .line 2451
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setHasBorder(Z)V

    .line 2452
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 2453
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 2454
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_14

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    :goto_c
    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 2456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    move-object/from16 v26, v0

    const/16 v2, 0x28

    const/high16 v3, 0x42200000    # 40.0f

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x3

    move/from16 v0, v20

    if-eq v0, v6, :cond_5

    const/4 v6, 0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_15

    :cond_5
    const/high16 v6, 0x42680000    # 58.0f

    :goto_d
    const/high16 v7, 0x41200000    # 10.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2457
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_6

    .line 2458
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2460
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$28;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$28;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2471
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_7

    .line 2472
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2473
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2476
    :cond_7
    new-instance v2, Lorg/telegram/ui/PhotoViewer$CounterView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$CounterView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    move-object/from16 v26, v0

    const/16 v2, 0x28

    const/high16 v3, 0x42200000    # 40.0f

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x3

    move/from16 v0, v20

    if-eq v0, v6, :cond_8

    const/4 v6, 0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_16

    :cond_8
    const/high16 v6, 0x42680000    # 58.0f

    :goto_e
    const/high16 v7, 0x42840000    # 66.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2478
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_9

    .line 2479
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$CounterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2481
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$29;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$29;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$CounterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2488
    new-instance v2, Lorg/telegram/ui/PhotoViewer$30;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$30;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .line 2514
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$31;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$31;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V

    .line 2543
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2545
    new-instance v2, Lorg/telegram/ui/PhotoViewer$32;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$32;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2561
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 2562
    new-instance v2, Lorg/telegram/ui/PhotoViewer$33;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$33;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 2568
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 2569
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 2570
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 2571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2572
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 2573
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 2574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/16 v5, 0x6e

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2576
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    new-instance v8, Lorg/telegram/ui/PhotoViewer$34;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/telegram/ui/PhotoViewer$34;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 2658
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowNewMentions(Z)V

    .line 2660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$35;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$35;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2677
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$36;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$36;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    goto/16 :goto_0

    .line 1458
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v15    # "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    .end local v16    # "manager":Landroid/view/WindowManager;
    .end local v17    # "max":I
    .end local v18    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v19    # "min":I
    .end local v20    # "rotation":I
    .end local v21    # "step":I
    .end local v23    # "tvQuality":Landroid/widget/TextView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_1

    .line 1462
    :cond_b
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 1463
    :cond_c
    const/4 v2, -0x1

    goto/16 :goto_3

    .line 1464
    :cond_d
    const/high16 v2, 0x7f000000

    goto/16 :goto_4

    .line 1465
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1479
    .restart local v9    # "back":Landroid/graphics/drawable/Drawable;
    .restart local v22    # "themePrefs":Landroid/content/SharedPreferences;
    .restart local v24    # "val":I
    :pswitch_0
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1480
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_6

    .line 1482
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1483
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_6

    .line 1485
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1486
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_6

    .line 2052
    .end local v9    # "back":Landroid/graphics/drawable/Drawable;
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v22    # "themePrefs":Landroid/content/SharedPreferences;
    .end local v24    # "val":I
    .restart local v18    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_f
    const v2, -0x935415

    goto/16 :goto_7

    :cond_10
    const v3, -0x935415

    goto/16 :goto_8

    .line 2054
    .restart local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_11
    const-string/jumbo v2, "chats_actionIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_9

    .line 2057
    :cond_12
    const/4 v4, 0x5

    goto/16 :goto_a

    .line 2092
    .restart local v17    # "max":I
    .restart local v19    # "min":I
    .restart local v21    # "step":I
    .restart local v23    # "tvQuality":Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->barQualityValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    .line 2454
    .restart local v15    # "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    .restart local v16    # "manager":Landroid/view/WindowManager;
    .restart local v20    # "rotation":I
    :cond_14
    const v2, -0x935415

    goto/16 :goto_c

    .line 2456
    :cond_15
    const/high16 v6, 0x42880000    # 68.0f

    goto/16 :goto_d

    .line 2477
    :cond_16
    const/high16 v6, 0x42880000    # 68.0f

    goto/16 :goto_e

    .line 1477
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0
    .param p1, "alert"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 1264
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 1265
    return-void
.end method

.method public setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 4671
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 4672
    return-void
.end method

.method public showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .prologue
    .line 3012
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 3035
    :goto_0
    return-void

    .line 3016
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_1

    .line 3017
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 3018
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3024
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 3025
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3026
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$38;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$38;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3032
    :catch_0
    move-exception v0

    .line 3033
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3020
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3021
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public updateMuteButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6275
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 6276
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 6278
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_3

    .line 6279
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6280
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v1, 0x7f020280

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6281
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_0
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6282
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6283
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 6284
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6285
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 6287
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    const v1, 0x46ea6000    # 30000.0f

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setMaxProgressDiff(F)V

    .line 6299
    :goto_1
    return-void

    .line 6281
    :cond_2
    const v0, -0xc25212

    goto :goto_0

    .line 6289
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6290
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6291
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v1, 0x7f020281

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6292
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6293
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 6294
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6295
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 6297
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setMaxProgressDiff(F)V

    goto :goto_1
.end method
