.class public Lorg/telegram/ui/Components/ChatAttachAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
.implements Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

.field private animateCameraValues:[I

.field private attachButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;",
            ">;"
        }
    .end annotation
.end field

.field private attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private attachView:Landroid/view/ViewGroup;

.field private baseFragment:Lorg/telegram/ui/ChatActivity;

.field private cameraAnimationInProgress:Z

.field private cameraFile:Ljava/io/File;

.field private cameraIcon:Landroid/widget/FrameLayout;

.field private cameraInitied:Z

.field private cameraOpenProgress:F

.field private cameraOpened:Z

.field private cameraPanel:Landroid/widget/FrameLayout;

.field private cameraPhoto:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private cameraViewLocation:[I

.field private cameraViewOffsetX:I

.field private cameraViewOffsetY:I

.field private ciclePaint:Landroid/graphics/Paint;

.field private currentHintAnimation:Landroid/animation/AnimatorSet;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

.field private deviceHasGoodCamera:Z

.field private dragging:Z

.field private flashAnimationInProgress:Z

.field private flashModeButton:[Landroid/widget/ImageView;

.field private hideHintRunnable:Ljava/lang/Runnable;

.field private hintShowed:Z

.field private hintTextView:Landroid/widget/TextView;

.field private ignoreLayout:Z

.field private innerAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastY:F

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private lineView:Landroid/view/View;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private maybeStartDraging:Z

.field private mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

.field private mediaCaptured:Z

.field private mediaEnabled:Z

.field private paused:Z

.field private photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

.field private pressed:Z

.field private progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private recordTime:Landroid/widget/TextView;

.field private requestingPermissions:Z

.field private revealAnimationInProgress:Z

.field private revealRadius:F

.field private revealX:I

.field private revealY:I

.field private scrollOffsetY:I

.field private sendDocumentsButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

.field private sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shutterButton:Lorg/telegram/ui/Components/ShutterButton;

.field private switchCameraButton:Landroid/widget/ImageView;

.field private takingPhoto:Z

.field private useRevealAnimation:Z

.field private videoRecordRunnable:Ljava/lang/Runnable;

.field private videoRecordTime:I

.field private viewPosition:[I

.field private views:[Landroid/view/View;

.field private viewsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/RecyclerListView$Holder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentFragment"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 365
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 100
    const/16 v2, 0x14

    new-array v2, v2, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtons:Ljava/util/ArrayList;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    .line 114
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    .line 118
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    .line 123
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    .line 125
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    .line 126
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    .line 133
    const/4 v2, 0x5

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    .line 136
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 156
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 158
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    .line 366
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "dialogBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 369
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setUseRevealAnimation(Z)V

    .line 370
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    .line 371
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eqz v2, :cond_0

    .line 372
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    .line 374
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 375
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 376
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 379
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setWillNotDraw(Z)V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEnabled(Z)V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v3, "dialogScrollGlow"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    sget v3, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 539
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v3, 0x8

    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    aput-object v4, v2, v3

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v3, 0xb

    new-instance v4, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    aput-object v4, v2, v3

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const v4, -0xb9b9ba

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->setPadding(IIII)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->setGravity(I)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->setTextSize(IF)V

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->setTextColor(I)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->setVisibility(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    move-object/from16 v19, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v3, 0x9

    new-instance v4, Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    aput-object v4, v2, v3

    .line 628
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v3, "PermissionStorage"

    const v4, 0x7f07056e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    .line 635
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v4, -0x1

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 638
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 640
    .local v16, "themePrefs":Landroid/content/SharedPreferences;
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_1

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 644
    const-string/jumbo v2, "chatAttachBGGradient"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 645
    .local v17, "val":I
    if-lez v17, :cond_1

    .line 647
    packed-switch v17, :pswitch_data_0

    .line 658
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 660
    .local v13, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_1
    const-string/jumbo v2, "chatAttachBGGradientColor"

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 661
    .local v14, "gradColor":I
    const/4 v2, 0x2

    new-array v11, v2, [I

    const/4 v2, 0x0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    aput v3, v11, v2

    const/4 v2, 0x1

    aput v14, v11, v2

    .line 662
    .local v11, "colors":[I
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12, v13, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 663
    .local v12, "gd":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    .end local v11    # "colors":[I
    .end local v12    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v14    # "gradColor":I
    .end local v17    # "val":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v3, 0xa

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$8;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    aput-object v4, v2, v3

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    const v2, -0x2d2d2e

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/16 v7, 0x33

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    const/16 v2, 0x8

    new-array v15, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "ChatCamera"

    const v4, 0x7f070177

    .line 677
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "ChatGallery"

    const v4, 0x7f070179

    .line 678
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "ChatVideo"

    const v4, 0x7f070181

    .line 679
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "AttachMusic"

    const v4, 0x7f0700b2

    .line 680
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "ChatDocument"

    const v4, 0x7f070178

    .line 681
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "AttachContact"

    const v4, 0x7f0700a9

    .line 682
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "ChatLocation"

    const v4, 0x7f07017d

    .line 683
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x7

    const-string/jumbo v3, ""

    aput-object v3, v15, v2

    .line 686
    .local v15, "items":[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_3
    const/16 v2, 0x8

    if-ge v9, v2, :cond_7

    .line 687
    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    .line 688
    .local v10, "attachButton":Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    aget-object v2, v15, v9

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v9

    invoke-virtual {v10, v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    const/16 v3, 0x55

    const/16 v4, 0x5a

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTag(Ljava/lang/Object;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aput-object v10, v2, v9

    .line 693
    const/4 v2, 0x7

    if-ne v9, v2, :cond_6

    .line 694
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 699
    :cond_2
    :goto_4
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 632
    .end local v9    # "a":I
    .end local v10    # "attachButton":Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
    .end local v15    # "items":[Ljava/lang/CharSequence;
    .end local v16    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v3, "NoPhotos"

    const v4, 0x7f07047d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    goto/16 :goto_0

    .line 649
    .restart local v16    # "themePrefs":Landroid/content/SharedPreferences;
    .restart local v17    # "val":I
    :pswitch_0
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 650
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_1

    .line 652
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 653
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_1

    .line 655
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 656
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_1

    .line 674
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v17    # "val":I
    :cond_4
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v2, "dialogGrayLine"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 696
    .restart local v9    # "a":I
    .restart local v10    # "attachButton":Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
    .restart local v15    # "items":[Ljava/lang/CharSequence;
    :cond_6
    const/4 v2, 0x4

    if-ne v9, v2, :cond_2

    .line 697
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendDocumentsButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    goto :goto_4

    .line 707
    .end local v10    # "attachButton":Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
    :cond_7
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const-string/jumbo v4, "chat_gifSaveHintBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "chat_gifSaveHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "AttachBotsHelp"

    const v4, 0x7f0700a8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const v3, 0x7f02022f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/4 v2, -0x2

    const/high16 v3, 0x42000000    # 32.0f

    const/16 v4, 0x55

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    const/4 v9, 0x0

    :goto_5
    const/16 v2, 0x8

    if-ge v9, v2, :cond_8

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 723
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    if-eqz v2, :cond_9

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 729
    :goto_6
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const v3, 0x7f020254

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v4, 0x66000000

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const-string/jumbo v3, "00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x64

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    new-instance v2, Lorg/telegram/ui/Components/ShutterButton;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ShutterButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    const/16 v4, 0x54

    const/16 v5, 0x54

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ShutterButton;->setDelegate(Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;)V

    .line 968
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x15

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    const/4 v9, 0x0

    :goto_7
    const/4 v2, 0x2

    if-ge v9, v2, :cond_a

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v9

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v9

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 726
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto/16 :goto_6

    .line 1030
    :cond_a
    return-void

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCameraViewPosition()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    return v0
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHint()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openCamera()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ShutterButton;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaCaptured:Z

    return v0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaCaptured:Z

    return p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    return v0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    return p1
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    return-object v0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->requestingPermissions:Z

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    return v0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    return p1
.end method

.method static synthetic access$5408(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    return v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->resetRecordState()V

    return-void
.end method

.method static synthetic access$5802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraInitied:Z

    return p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6402(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    return v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setUseRevealAnimation(Z)V

    return-void
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7402(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onRevealAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z

    return p1
.end method

.method private applyCameraViewPosition()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x42a00000    # 80.0f

    .line 1439
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v4, :cond_4

    .line 1440
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v4, :cond_0

    .line 1441
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    .line 1442
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v5, v8

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    .line 1444
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1445
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v5, v8

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1446
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    sub-int v1, v4, v5

    .line 1447
    .local v1, "finalWidth":I
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    sub-int v0, v4, v5

    .line 1450
    .local v0, "finalHeight":I
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v4, :cond_2

    .line 1451
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraView;->setClipLeft(I)V

    .line 1452
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    .line 1453
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1454
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v0, :cond_1

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v1, :cond_2

    .line 1455
    :cond_1
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1456
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1457
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/camera/CameraView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1458
    move-object v3, v2

    .line 1459
    .local v3, "layoutParamsFinal":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$17;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1470
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "layoutParamsFinal":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1471
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v0, :cond_3

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v1, :cond_4

    .line 1472
    :cond_3
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1473
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1474
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1475
    move-object v3, v2

    .line 1476
    .restart local v3    # "layoutParamsFinal":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$18;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1486
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "layoutParamsFinal":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    return-void
.end method

.method private checkCameraViewPosition()V
    .locals 11

    .prologue
    const/high16 v10, 0x42a00000    # 80.0f

    const/high16 v9, -0x3cea0000    # -150.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1388
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-nez v4, :cond_0

    .line 1436
    :goto_0
    return-void

    .line 1391
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1392
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1393
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1394
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_7

    .line 1395
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    .line 1396
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1431
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    .line 1432
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    .line 1433
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    aput v5, v4, v7

    .line 1434
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aput v7, v4, v8

    .line 1435
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCameraViewPosition()V

    goto :goto_0

    .line 1400
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1401
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v4, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getLeftInset()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v4, v7

    .line 1402
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getX()F

    move-result v4

    sget v5, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getLeftInset()I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 1403
    .local v3, "listViewX":F
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v4, v4, v7

    int-to-float v4, v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_4

    .line 1404
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v4, v4, v7

    int-to-float v4, v4

    sub-float v4, v3, v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    .line 1405
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 1406
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    .line 1407
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    aput v5, v4, v7

    .line 1408
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aput v7, v4, v8

    .line 1415
    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v4, v4, v8

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v4, v5, :cond_6

    .line 1416
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v5, v8

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    .line 1417
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 1418
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    .line 1419
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    aput v5, v4, v7

    .line 1420
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aput v7, v4, v8

    .line 1427
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCameraViewPosition()V

    goto/16 :goto_0

    .line 1410
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v4, v7

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    add-int/2addr v5, v6

    aput v5, v4, v7

    goto :goto_2

    .line 1413
    :cond_4
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    goto :goto_2

    .line 1422
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v4, v8

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    add-int/2addr v5, v6

    aput v5, v4, v8

    goto :goto_3

    .line 1425
    :cond_6
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    goto :goto_3

    .line 1392
    .end local v3    # "listViewX":F
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 1729
    sget-object v5, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v5, :cond_0

    move-object v1, v6

    .line 1746
    :goto_0
    return-object v1

    .line 1732
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1733
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 1734
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1735
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 1736
    check-cast v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1737
    .local v1, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1738
    .local v3, "num":I
    if-ltz v3, :cond_1

    sget-object v5, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 1733
    .end local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .end local v3    # "num":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1741
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .restart local v3    # "num":I
    :cond_2
    if-ne v3, p1, :cond_1

    goto :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .end local v3    # "num":I
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    move-object v1, v6

    .line 1746
    goto :goto_0
.end method

.method private hideHint()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1173
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1175
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    .line 1177
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1206
    :goto_0
    return-void

    .line 1180
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    .line 1181
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    .line 1182
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1181
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1185
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1205
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private onRevealAnimationEnd(Z)V
    .locals 3
    .param p1, "open"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1883
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 1884
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    .line 1885
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    .line 1886
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 1888
    :cond_0
    if-eqz p1, :cond_1

    .line 1889
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    .line 1890
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showHint()V

    .line 1892
    :cond_1
    return-void
.end method

.method private openCamera()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/high16 v10, 0x42a00000    # 80.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1240
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v3, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1243
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aput v6, v3, v6

    .line 1244
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    sub-int/2addr v4, v5

    aput v4, v3, v7

    .line 1245
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    sub-int/2addr v4, v5

    aput v4, v3, v8

    .line 1246
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    .line 1247
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1248
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string/jumbo v3, "cameraOpenProgress"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v8, :cond_1

    .line 1253
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 1254
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1259
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1260
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1261
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$15;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1270
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1271
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 1272
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v4, 0x404

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/camera/CameraView;->setSystemUiVisibility(I)V

    .line 1274
    :cond_2
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    goto/16 :goto_0

    .line 1252
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1250
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1033
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 1034
    :cond_1
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    if-nez v5, :cond_2

    .line 1035
    iput-boolean v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    .line 1036
    iput-boolean v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maybeStartDraging:Z

    .line 1037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lastY:F

    .line 1092
    :cond_2
    :goto_0
    return v10

    .line 1039
    :cond_3
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    if-eqz v5, :cond_2

    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v13, :cond_5

    .line 1041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1042
    .local v2, "newY":F
    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lastY:F

    sub-float v1, v2, v5

    .line 1043
    .local v1, "dy":F
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maybeStartDraging:Z

    if-eqz v5, :cond_4

    .line 1044
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v6, v11}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 1045
    iput-boolean v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maybeStartDraging:Z

    .line 1046
    iput-boolean v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    goto :goto_0

    .line 1048
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    if-eqz v5, :cond_2

    .line 1049
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v5, :cond_2

    .line 1050
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    .line 1051
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lastY:F

    .line 1052
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1053
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1054
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1055
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v7, "alpha"

    new-array v8, v10, [F

    aput v9, v8, v11

    .line 1056
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v6, v6, v11

    const-string/jumbo v7, "alpha"

    new-array v8, v10, [F

    aput v9, v8, v11

    .line 1057
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v6, v6, v10

    const-string/jumbo v7, "alpha"

    new-array v8, v10, [F

    aput v9, v8, v11

    .line 1058
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v13

    .line 1055
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1059
    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1060
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1064
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "dy":F
    .end local v2    # "newY":F
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eq v5, v10, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 1065
    :cond_6
    iput-boolean v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    .line 1066
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    if-eqz v5, :cond_8

    .line 1067
    iput-boolean v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    .line 1068
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v5, :cond_2

    .line 1069
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/CameraView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 1070
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    goto/16 :goto_0

    .line 1072
    :cond_7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1073
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const-string/jumbo v7, "translationY"

    new-array v8, v10, [F

    aput v9, v8, v11

    .line 1074
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v7, "alpha"

    new-array v8, v10, [F

    aput v12, v8, v11

    .line 1075
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v6, v6, v11

    const-string/jumbo v7, "alpha"

    new-array v8, v10, [F

    aput v12, v8, v11

    .line 1076
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v13

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v7, v7, v10

    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    aput v12, v9, v11

    .line 1077
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1073
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1078
    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1079
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1080
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1081
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1085
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/camera/CameraView;->getLocationOnScreen([I)V

    .line 1086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    aget v6, v6, v11

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 1087
    .local v3, "viewX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    aget v6, v6, v10

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 1088
    .local v4, "viewY":F
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(II)V

    goto/16 :goto_0
.end method

.method private resetRecordState()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1101
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v1, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1104
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1105
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1107
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1108
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1109
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1110
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    .line 1111
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 1115
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1126
    :goto_1
    return-void

    .line 1115
    :sswitch_0
    const-string/jumbo v1, "off"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "on"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "auto"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1117
    :pswitch_0
    const v0, 0x7f02009f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1120
    :pswitch_1
    const v0, 0x7f0200a0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1123
    :pswitch_2
    const v0, 0x7f02009e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1115
    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_1
        0x1ad6f -> :sswitch_0
        0x2dddaf -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setUseRevealAnimation(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2180
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2181
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    .line 2183
    :cond_1
    return-void
.end method

.method private showHint()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1573
    sget-object v1, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1616
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1577
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "bothint"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1580
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    .line 1582
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1583
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    .line 1584
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v3, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    .line 1585
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1584
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1587
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1588
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1614
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1615
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1584
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startRevealAnimation(Z)V
    .locals 32
    .param p1, "open"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 2210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2212
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2214
    .local v7, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->getRevealView()Landroid/view/View;

    move-result-object v23

    .line 2215
    .local v23, "view":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v25

    if-nez v25, :cond_2

    .line 2216
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v12, v0, [I

    .line 2217
    .local v12, "coords":[I
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2219
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_1

    .line 2220
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v26

    sub-int v25, v25, v26

    sget v26, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v20, v0

    .line 2224
    .local v20, "top":F
    :goto_0
    const/16 v25, 0x0

    aget v25, v12, v25

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    .line 2225
    const/16 v25, 0x1

    aget v25, v12, v25

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v20

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    .line 2226
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_0

    .line 2227
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v25, v0

    sget v26, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    .line 2234
    .end local v12    # "coords":[I
    .end local v20    # "top":F
    :cond_0
    :goto_1
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v13, v0, [[I

    const/16 v25, 0x0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    aput-object v26, v13, v25

    const/16 v25, 0x1

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x1

    const/high16 v28, 0x43980000    # 304.0f

    .line 2236
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    aput v28, v26, v27

    aput-object v26, v13, v25

    const/16 v25, 0x2

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    .line 2237
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    aput-object v26, v13, v25

    const/16 v25, 0x3

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    .line 2238
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/high16 v28, 0x43980000    # 304.0f

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    aput v28, v26, v27

    aput-object v26, v13, v25

    .line 2240
    .local v13, "corners":[[I
    const/16 v17, 0x0

    .line 2241
    .local v17, "finalRevealRadius":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sget v26, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    add-int v24, v25, v26

    .line 2242
    .local v24, "y":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ge v6, v0, :cond_3

    .line 2243
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    aget-object v26, v13, v6

    const/16 v27, 0x0

    aget v26, v26, v27

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v26, v0

    aget-object v27, v13, v6

    const/16 v28, 0x0

    aget v27, v27, v28

    sub-int v26, v26, v27

    mul-int v25, v25, v26

    aget-object v26, v13, v6

    const/16 v27, 0x1

    aget v26, v26, v27

    sub-int v26, v24, v26

    aget-object v27, v13, v6

    const/16 v28, 0x1

    aget v27, v27, v28

    sub-int v27, v24, v27

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2242
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2222
    .end local v6    # "a":I
    .end local v13    # "corners":[[I
    .end local v17    # "finalRevealRadius":I
    .end local v24    # "y":I
    .restart local v12    # "coords":[I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getY()F

    move-result v20

    .restart local v20    # "top":F
    goto/16 :goto_0

    .line 2230
    .end local v12    # "coords":[I
    .end local v20    # "top":F
    :cond_2
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    sget v26, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    .line 2231
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getY()F

    move-result v26

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    goto/16 :goto_1

    .line 2245
    .restart local v6    # "a":I
    .restart local v13    # "corners":[[I
    .restart local v17    # "finalRevealRadius":I
    .restart local v24    # "y":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v18, v0

    .line 2247
    .local v18, "finalRevealX":I
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2248
    .local v9, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string/jumbo v26, "revealRadius"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    if-eqz p1, :cond_8

    const/16 v25, 0x0

    :goto_4
    aput v25, v27, v28

    const/16 v28, 0x1

    if-eqz p1, :cond_9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    :goto_5
    aput v25, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2249
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    if-eqz p1, :cond_a

    const/16 v25, 0x33

    :goto_6
    aput v25, v28, v29

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2250
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_d

    .line 2252
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v28, v0

    if-eqz p1, :cond_b

    const/16 v25, 0x0

    move/from16 v26, v25

    :goto_7
    if-eqz p1, :cond_c

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    :goto_8
    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v26

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2256
    :goto_9
    const-wide/16 v26, 0x140

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2275
    :cond_4
    :goto_a
    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2276
    new-instance v25, Lorg/telegram/ui/Components/ChatAttachAlert$21;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZLandroid/animation/AnimatorSet;)V

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2301
    if-eqz p1, :cond_13

    .line 2302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 2303
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget v28, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    aput v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/NotificationCenter;->setAllowedNotificationsDutingAnimation([I)V

    .line 2304
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 2305
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    .line 2307
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_10

    const/16 v14, 0xc

    .line 2308
    .local v14, "count":I
    :goto_b
    const/4 v6, 0x0

    :goto_c
    if-ge v6, v14, :cond_13

    .line 2309
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_11

    .line 2310
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ge v6, v0, :cond_5

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3dcccccd    # 0.1f

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleX(F)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3dcccccd    # 0.1f

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleY(F)V

    .line 2314
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setAlpha(F)V

    .line 2320
    :goto_d
    new-instance v19, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$1;)V

    .line 2322
    .local v19, "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v10, v25, v26

    .line 2323
    .local v10, "buttonX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getTop()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v11, v25, v26

    .line 2324
    .local v11, "buttonY":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    sub-int v25, v25, v10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v26, v0

    sub-int v26, v26, v10

    mul-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v26, v0

    sub-int v26, v26, v11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v27, v0

    sub-int v27, v27, v11

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v15, v0

    .line 2325
    .local v15, "dist":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    sub-int v25, v25, v10

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v21, v25, v15

    .line 2326
    .local v21, "vecX":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v25, v0

    sub-int v25, v25, v11

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v22, v25, v15

    .line 2327
    .local v22, "vecY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x41a00000    # 20.0f

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v21

    add-float v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setPivotX(F)V

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x41a00000    # 20.0f

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v22

    add-float v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setPivotY(F)V

    .line 2329
    const/high16 v25, 0x42a20000    # 81.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v15, v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->startRadius:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$7002(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;F)F

    .line 2331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x7f07007d

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2332
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2334
    .restart local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ge v6, v0, :cond_12

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const-string/jumbo v26, "scaleX"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_1

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const-string/jumbo v26, "scaleY"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_2

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2338
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2339
    .local v8, "animatorSetInner":Landroid/animation/AnimatorSet;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v27, v0

    aget-object v27, v27, v6

    const-string/jumbo v28, "scaleX"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    aput v31, v29, v30

    .line 2340
    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v27, v0

    aget-object v27, v27, v6

    const-string/jumbo v28, "scaleY"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    aput v31, v29, v30

    .line 2341
    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    aput-object v27, v25, v26

    .line 2339
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2342
    const-wide/16 v26, 0x64

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2347
    :goto_e
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_6

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2350
    :cond_6
    new-instance v25, Landroid/animation/AnimatorSet;

    invoke-direct/range {v25 .. v25}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$7102(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2351
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$7100(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2352
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$7100(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    const-wide/16 v26, 0x96

    invoke-virtual/range {v25 .. v27}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2353
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$7100(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2354
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$7100(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    new-instance v26, Lorg/telegram/ui/Components/ChatAttachAlert$22;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V

    invoke-virtual/range {v25 .. v26}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2308
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    .line 2245
    .end local v8    # "animatorSetInner":Landroid/animation/AnimatorSet;
    .end local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v10    # "buttonX":I
    .end local v11    # "buttonY":I
    .end local v14    # "count":I
    .end local v15    # "dist":F
    .end local v18    # "finalRevealX":I
    .end local v19    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .end local v21    # "vecX":F
    .end local v22    # "vecY":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v18

    goto/16 :goto_3

    .line 2248
    .restart local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v18    # "finalRevealX":I
    :cond_8
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    goto/16 :goto_4

    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 2249
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 2252
    :cond_b
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v25

    goto/16 :goto_7

    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 2253
    :catch_0
    move-exception v16

    .line 2254
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 2258
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_d
    if-nez p1, :cond_f

    .line 2259
    const-wide/16 v26, 0xc8

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    :goto_f
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const-string/jumbo v26, "scaleX"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const-string/jumbo v26, "scaleY"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 2260
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    goto/16 :goto_f

    .line 2266
    :cond_f
    const-wide/16 v26, 0xfa

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2270
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_4

    .line 2271
    const-wide/16 v26, 0x14

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto/16 :goto_a

    .line 2307
    :cond_10
    const/16 v14, 0x8

    goto/16 :goto_b

    .line 2316
    .restart local v14    # "count":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3f333333    # 0.7f

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleX(F)V

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3f333333    # 0.7f

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_d

    .line 2345
    .restart local v10    # "buttonX":I
    .restart local v11    # "buttonY":I
    .restart local v15    # "dist":F
    .restart local v19    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .restart local v21    # "vecX":F
    .restart local v22    # "vecY":F
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "animatorSetInner":Landroid/animation/AnimatorSet;
    goto/16 :goto_e

    .line 2365
    .end local v8    # "animatorSetInner":Landroid/animation/AnimatorSet;
    .end local v10    # "buttonX":I
    .end local v11    # "buttonY":I
    .end local v14    # "count":I
    .end local v15    # "dist":F
    .end local v19    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .end local v21    # "vecX":F
    .end local v22    # "vecY":F
    :cond_13
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 2366
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 2367
    return-void

    .line 2234
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2335
    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f866666    # 1.05f
    .end array-data

    .line 2336
    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f866666    # 1.05f
    .end array-data
.end method

.method private updateLayout()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1637
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1638
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1639
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    .line 1653
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1643
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1644
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1645
    .local v3, "top":I
    const/4 v2, 0x0

    .line 1646
    .local v2, "newOffset":I
    if-ltz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_2

    .line 1647
    move v2, v3

    .line 1649
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    if-eq v4, v2, :cond_0

    .line 1650
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1651
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    .prologue
    .line 1776
    const/4 v0, 0x1

    return v0
.end method

.method public canDismiss()Z
    .locals 1

    .prologue
    .line 1938
    const/4 v0, 0x1

    return v0
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    .prologue
    .line 2432
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    .line 1861
    const/4 v0, 0x0

    return v0
.end method

.method public checkCamera(Z)V
    .locals 5
    .param p1, "request"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1895
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v1, :cond_1

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1899
    :cond_1
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    if-nez v1, :cond_0

    .line 1903
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    .line 1904
    .local v0, "old":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_5

    .line 1905
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1906
    if-eqz p1, :cond_2

    .line 1907
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v2, v4

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1909
    :cond_2
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    .line 1918
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    if-eqz v1, :cond_3

    .line 1919
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1921
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v1, :cond_0

    .line 1922
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCamera()V

    goto :goto_0

    .line 1911
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    .line 1912
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    goto :goto_1

    .line 1915
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    .line 1916
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    goto :goto_1
.end method

.method public closeCamera(Z)V
    .locals 12
    .param p1, "animated"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/high16 v11, 0x42a00000    # 80.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1279
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v4, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    sub-int/2addr v5, v6

    aput v5, v4, v9

    .line 1283
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    sub-int/2addr v5, v6

    aput v5, v4, v10

    .line 1284
    if-eqz p1, :cond_4

    .line 1285
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1286
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v5, v4, v8

    .line 1287
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/camera/CameraView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1288
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    .line 1290
    iput-boolean v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    .line 1291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string/jumbo v4, "cameraOpenProgress"

    new-array v5, v9, [F

    aput v7, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v10, :cond_2

    .line 1295
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 1296
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1301
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1302
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1303
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$16;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1316
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1294
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1318
    .end local v0    # "a":I
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aput v8, v4, v8

    .line 1319
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCameraOpenProgress(F)V

    .line 1320
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1321
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1322
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    if-ge v0, v10, :cond_5

    .line 1323
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 1324
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1328
    :cond_5
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    .line 1329
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 1330
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraView;->setSystemUiVisibility(I)V

    goto/16 :goto_0

    .line 1322
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1620
    sget v0, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    if-ne p1, v0, :cond_1

    .line 1621
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    if-eqz v0, :cond_0

    .line 1622
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1626
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    if-ne p1, v0, :cond_2

    .line 1627
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1630
    :cond_2
    sget v0, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    if-ne p1, v0, :cond_0

    .line 1631
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2437
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    if-eqz v0, :cond_0

    .line 2446
    :goto_0
    return-void

    .line 2440
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_1

    .line 2441
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    goto :goto_0

    .line 2444
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideCamera(Z)V

    .line 2445
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_0
.end method

.method public dismissInternal()V
    .locals 2

    .prologue
    .line 2371
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2372
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2374
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 2375
    return-void
.end method

.method public dismissWithButtonClick(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 2426
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V

    .line 2427
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideCamera(Z)V

    .line 2428
    return-void

    .line 2427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraOpenProgress()F
    .locals 1

    .prologue
    .line 1384
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpenProgress:F

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 1751
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 1752
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_0

    .line 1753
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 1754
    .local v1, "coords":[I
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 1755
    aget v3, v1, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getLeftInset()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v5

    .line 1756
    new-instance v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 1757
    .local v2, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    aget v3, v1, v5

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 1758
    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 1759
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 1760
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1761
    iget-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 1762
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    .line 1763
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->showCheck(Z)V

    .line 1766
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getRevealRadius()F
    .locals 1

    .prologue
    .line 2205
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    return v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1718
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1798
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 1799
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_0

    .line 1800
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1802
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideCamera(Z)V
    .locals 6
    .param p1, "async"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1554
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v3, :cond_1

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1557
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3, p1, v5}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 1558
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->removeView(Landroid/view/View;)V

    .line 1559
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->removeView(Landroid/view/View;)V

    .line 1560
    iput-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    .line 1561
    iput-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    .line 1562
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1563
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1564
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1565
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v3, :cond_2

    .line 1566
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1563
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public init()V
    .locals 6

    .prologue
    const v5, 0xf4240

    const/4 v4, 0x0

    .line 1699
    sget-object v2, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v2, :cond_0

    .line 1700
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/16 v2, 0x64

    sget-object v3, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1701
    sget-object v2, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1702
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    .line 1700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1705
    .end local v0    # "a":I
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 1706
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1707
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    .line 1709
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1710
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1711
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1712
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->clearSelectedPhotos()V

    .line 1713
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1714
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    .line 1715
    return-void
.end method

.method public isPhotoChecked(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1827
    if-ltz p1, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGalleryPhotos()V
    .locals 2

    .prologue
    .line 1693
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1694
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 1696
    :cond_0
    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1097
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCustomCloseAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2416
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    if-eqz v1, :cond_0

    .line 2417
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 2418
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->startRevealAnimation(Z)V

    .line 2419
    const/4 v0, 0x1

    .line 2421
    :cond_0
    return v0
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/16 v9, 0x15

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1149
    sub-int v4, p4, p2

    .line 1150
    .local v4, "width":I
    sub-int v0, p5, p3

    .line 1151
    .local v0, "height":I
    if-ge v4, v0, :cond_0

    move v1, v5

    .line 1152
    .local v1, "isPortrait":Z
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_2

    .line 1153
    if-eqz v1, :cond_1

    .line 1154
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, p5, v8

    invoke-virtual {v7, v6, v8, v4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1169
    :goto_1
    return v5

    .end local v1    # "isPortrait":Z
    :cond_0
    move v1, v6

    .line 1151
    goto :goto_0

    .line 1156
    .restart local v1    # "isPortrait":Z
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, p4, v8

    invoke-virtual {v7, v8, v6, p4, v0}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1

    .line 1159
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v7, v7, v6

    if-eq p1, v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v7, v7, v5

    if-ne p1, v7, :cond_7

    .line 1160
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_4

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 1161
    .local v3, "topAdd":I
    :goto_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 1162
    .local v2, "leftAdd":I
    :goto_3
    if-eqz v1, :cond_6

    .line 1163
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, p4, v6

    sub-int/2addr v6, v2

    sub-int v7, p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p1, v6, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .end local v2    # "leftAdd":I
    .end local v3    # "topAdd":I
    :cond_4
    move v3, v6

    .line 1160
    goto :goto_2

    .restart local v3    # "topAdd":I
    :cond_5
    move v2, v6

    .line 1161
    goto :goto_3

    .line 1165
    .restart local v2    # "leftAdd":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1, v2, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .end local v2    # "leftAdd":I
    .end local v3    # "topAdd":I
    :cond_7
    move v5, v6

    .line 1169
    goto :goto_1
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    .line 1130
    if-ge p2, p3, :cond_0

    move v0, v1

    .line 1131
    .local v0, "isPortrait":Z
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-ne p1, v3, :cond_1

    .line 1132
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    if-nez v3, :cond_3

    .line 1133
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/camera/CameraView;->measure(II)V

    .line 1144
    :goto_1
    return v1

    .end local v0    # "isPortrait":Z
    :cond_0
    move v0, v2

    .line 1130
    goto :goto_0

    .line 1136
    .restart local v0    # "isPortrait":Z
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_3

    .line 1137
    if-eqz v0, :cond_2

    .line 1138
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_1

    .line 1140
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1144
    goto :goto_1
.end method

.method protected onCustomOpenAnimation()Z
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    .line 2379
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_6

    .line 2380
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2381
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2382
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    .line 2383
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 2384
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setAlpha(F)V

    .line 2385
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setEnabled(Z)V

    .line 2383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "a":I
    :cond_1
    move v2, v3

    .line 2382
    goto :goto_0

    .restart local v0    # "a":I
    :cond_2
    move v5, v7

    .line 2384
    goto :goto_2

    .line 2387
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    if-eqz v2, :cond_7

    move v2, v6

    :goto_3
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    .line 2388
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEnabled(Z)V

    .line 2389
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    if-nez v2, :cond_4

    .line 2390
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2391
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    const-string/jumbo v5, "AttachMediaRestrictedForever"

    const v8, 0x7f0700b1

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2396
    :cond_4
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x4

    :goto_5
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->setVisibility(I)V

    .line 2397
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v2, :cond_5

    .line 2398
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    if-eqz v2, :cond_a

    move v2, v6

    :goto_6
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/camera/CameraView;->setAlpha(F)V

    .line 2399
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/camera/CameraView;->setEnabled(Z)V

    .line 2401
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_6

    .line 2402
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    if-eqz v5, :cond_b

    :goto_7
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2403
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2407
    .end local v0    # "a":I
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_6
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    if-eqz v2, :cond_c

    .line 2408
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->startRevealAnimation(Z)V

    .line 2411
    :goto_8
    return v4

    .restart local v0    # "a":I
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7
    move v2, v7

    .line 2387
    goto :goto_3

    .line 2393
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaBanTooltip:Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    const-string/jumbo v5, "AttachMediaRestricted"

    const v8, 0x7f0700b0

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v5, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    move v2, v3

    .line 2396
    goto :goto_5

    :cond_a
    move v2, v7

    .line 2398
    goto :goto_6

    :cond_b
    move v6, v7

    .line 2402
    goto :goto_7

    .end local v0    # "a":I
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c
    move v4, v3

    .line 2411
    goto :goto_8
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1722
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1723
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1724
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1725
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    .line 1726
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2450
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 2451
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getDelegate()Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterReleased()V

    .line 2452
    const/4 v0, 0x1

    .line 2454
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOpenAnimationEnd()V
    .locals 1

    .prologue
    .line 1928
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onRevealAnimationEnd(Z)V

    .line 1929
    return-void
.end method

.method public onOpenAnimationStart()V
    .locals 0

    .prologue
    .line 1934
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    if-nez v0, :cond_0

    .line 1229
    :goto_0
    return-void

    .line 1212
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->requestingPermissions:Z

    if-nez v0, :cond_3

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_1

    .line 1214
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->resetRecordState()V

    .line 1215
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    .line 1216
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    .line 1218
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_2

    .line 1219
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    .line 1221
    :cond_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideCamera(Z)V

    .line 1228
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    goto :goto_0

    .line 1223
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_4

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    .line 1226
    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->requestingPermissions:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1232
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    .line 1233
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1234
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    .line 1236
    :cond_0
    return-void
.end method

.method public scaleToFill()Z
    .locals 1

    .prologue
    .line 1771
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 1866
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1867
    if-ltz p1, :cond_0

    sget-object v1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1870
    :cond_1
    sget-object v1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1871
    .local v0, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iput-object p2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1872
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    .end local v0    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(I)V

    goto :goto_0
.end method

.method public setAllowDrawContent(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1943
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowDrawContent(Z)V

    .line 1944
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCameraViewPosition()V

    .line 1945
    return-void
.end method

.method public setCameraOpenProgress(F)V
    .locals 14
    .param p1, "value"    # F

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 1336
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v8, :cond_0

    .line 1381
    :goto_0
    return-void

    .line 1339
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpenProgress:F

    .line 1340
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aget v8, v8, v6

    int-to-float v5, v8

    .line 1341
    .local v5, "startWidth":F
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    int-to-float v4, v8

    .line 1342
    .local v4, "startHeight":F
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-ge v8, v9, :cond_2

    move v2, v6

    .line 1345
    .local v2, "isPortrait":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 1346
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 1347
    .local v1, "endWidth":F
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .line 1352
    .local v0, "endHeight":F
    :goto_2
    cmpl-float v8, p1, v11

    if-nez v8, :cond_4

    .line 1353
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setClipLeft(I)V

    .line 1354
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    .line 1355
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v9, v9, v7

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    .line 1356
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v9, v9, v6

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    .line 1357
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v9, v9, v7

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1358
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v9, v9, v6

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1363
    :cond_1
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8}, Lorg/telegram/messenger/camera/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1364
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sub-float v8, v1, v5

    mul-float/2addr v8, p1

    add-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1365
    sub-float v8, v0, v4

    mul-float/2addr v8, p1

    add-float/2addr v8, v4

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1366
    cmpl-float v8, p1, v11

    if-eqz v8, :cond_6

    .line 1367
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    int-to-float v9, v9

    sub-float v10, v12, p1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setClipLeft(I)V

    .line 1368
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    int-to-float v9, v9

    sub-float v10, v12, p1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    .line 1369
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v8, v8, v7

    int-to-float v8, v8

    sub-float v9, v12, p1

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1370
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aget v8, v8, v7

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v6, v9, v6

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aget v7, v9, v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v7, v12, p1

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1375
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/camera/CameraView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1376
    cmpg-float v6, p1, v13

    if-gtz v6, :cond_7

    .line 1377
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    div-float v7, p1, v13

    sub-float v7, v12, v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/16 :goto_0

    .end local v0    # "endHeight":F
    .end local v1    # "endWidth":F
    .end local v2    # "isPortrait":Z
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v2, v7

    .line 1342
    goto/16 :goto_1

    .line 1349
    .restart local v2    # "isPortrait":Z
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 1350
    .restart local v1    # "endWidth":F
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .restart local v0    # "endHeight":F
    goto/16 :goto_2

    .line 1359
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8}, Lorg/telegram/messenger/camera/CameraView;->getTranslationX()F

    move-result v8

    cmpl-float v8, v8, v11

    if-nez v8, :cond_5

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v8

    cmpl-float v8, v8, v11

    if-eqz v8, :cond_1

    .line 1360
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    .line 1361
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    goto/16 :goto_3

    .line 1372
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1373
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 1379
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V
    .locals 0
    .param p1, "chatAttachViewDelegate"    # Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    .prologue
    .line 1689
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    .line 1690
    return-void
.end method

.method public setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 1832
    const/4 v1, 0x1

    .line 1833
    .local v1, "add":Z
    if-ltz p1, :cond_0

    sget-object v6, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 1857
    :cond_0
    :goto_0
    return-void

    .line 1836
    :cond_1
    sget-object v6, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1837
    .local v4, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v6

    iget v7, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1838
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v6

    iget v7, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    const/4 v6, 0x0

    iput-object v6, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1840
    const/4 v1, 0x0

    .line 1845
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1846
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v2, :cond_2

    .line 1847
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1848
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v6, :cond_4

    .line 1849
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1850
    .local v3, "num":I
    if-ne v3, p1, :cond_4

    .line 1851
    check-cast v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .end local v5    # "view":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(ZZ)V

    .line 1856
    .end local v3    # "num":I
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    goto :goto_0

    .line 1842
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_3
    iput-object p2, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1843
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v6

    iget v7, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1846
    .restart local v0    # "a":I
    .restart local v2    # "count":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected setRevealRadius(F)V
    .locals 4
    .param p1, "radius"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 2187
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    .line 2188
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_0

    .line 2189
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    .line 2191
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isDismissed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2192
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2193
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;

    .line 2194
    .local v1, "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->startRadius:F
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$7000(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_1

    .line 2192
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2197
    :cond_1
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$7100(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2198
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2199
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2202
    .end local v0    # "a":I
    .end local v1    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    :cond_2
    return-void
.end method

.method public showCamera()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x50

    .line 1490
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    if-nez v1, :cond_1

    .line 1551
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v1, :cond_2

    .line 1494
    new-instance v1, Lorg/telegram/messenger/camera/CameraView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v8}, Lorg/telegram/messenger/camera/CameraView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    .line 1495
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v7, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v9, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1496
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    .line 1534
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    .line 1535
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    const/4 v5, 0x2

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1537
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1538
    .local v0, "cameraImageView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1539
    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1540
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    const/16 v4, 0x55

    invoke-static {v7, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1542
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lorg/telegram/messenger/camera/CameraView;->setAlpha(F)V

    .line 1543
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/camera/CameraView;->setEnabled(Z)V

    .line 1544
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1545
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaEnabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1547
    .end local v0    # "cameraImageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v8

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    .line 1548
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v9

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    .line 1549
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v8

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1550
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v9

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto/16 :goto_0

    .restart local v0    # "cameraImageView":Landroid/widget/ImageView;
    :cond_3
    move v1, v3

    .line 1542
    goto :goto_1

    :cond_4
    move v2, v3

    .line 1544
    goto :goto_2
.end method

.method public updatePhotoAtIndex(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0201e4

    .line 1781
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 1782
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_0

    .line 1783
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 1784
    sget-object v2, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1785
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1786
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1794
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_0
    :goto_0
    return-void

    .line 1787
    .restart local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_1
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1788
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 1789
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thumb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1791
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updatePhotosButton()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1661
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1662
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 1663
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v9, v3, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1664
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1665
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020015

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1666
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$6500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendDocumentsButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$6500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "ChatDocument"

    const v4, 0x7f070178

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1679
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1680
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v3, "PermissionStorage"

    const v4, 0x7f07056e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 1681
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    .line 1686
    :goto_1
    return-void

    .line 1669
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1670
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02001d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1671
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1672
    .local v1, "send":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1674
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02001c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1675
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$6500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "SendItems"

    const v4, 0x7f070645

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "(%d)"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1676
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendDocumentsButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$6500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v3

    if-ne v0, v10, :cond_1

    const-string/jumbo v2, "SendAsFile"

    const v4, 0x7f07063d

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v2, "SendAsFiles"

    const v4, 0x7f07063e

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1683
    .end local v1    # "send":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v3, "NoPhotos"

    const v4, 0x7f07047d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 1684
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    goto/16 :goto_1
.end method

.method public willHidePhotoViewer()V
    .locals 5

    .prologue
    .line 1815
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1816
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1817
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1818
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 1819
    check-cast v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1820
    .local v1, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->showCheck(Z)V

    .line 1816
    .end local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1823
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1807
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 1808
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_0

    .line 1809
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->showCheck(Z)V

    .line 1811
    :cond_0
    return-void
.end method
