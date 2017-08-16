.class public Lorg/telegram/ui/Components/PhotoFilterView;
.super Landroid/widget/FrameLayout;
.source "PhotoFilterView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;,
        Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;,
        Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;,
        Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
    }
.end annotation


# static fields
.field private static final curveDataStep:I = 0x2

.field private static final curveGranularity:I = 0x64


# instance fields
.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private blurAngle:F

.field private blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

.field private blurExcludeBlurSize:F

.field private blurExcludePoint:Lorg/telegram/ui/Components/Point;

.field private blurExcludeSize:F

.field private blurItem:Landroid/widget/ImageView;

.field private blurLayout:Landroid/widget/FrameLayout;

.field private blurLinearButton:Landroid/widget/TextView;

.field private blurOffButton:Landroid/widget/TextView;

.field private blurRadialButton:Landroid/widget/TextView;

.field private blurType:I

.field private cancelTextView:Landroid/widget/TextView;

.field private contrastTool:I

.field private contrastValue:F

.field private curveItem:Landroid/widget/ImageView;

.field private curveLayout:Landroid/widget/FrameLayout;

.field private curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

.field private curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

.field private curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

.field private doneTextView:Landroid/widget/TextView;

.field private eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

.field private enhanceTool:I

.field private enhanceValue:F

.field private exposureTool:I

.field private exposureValue:F

.field private fadeTool:I

.field private fadeValue:F

.field private grainTool:I

.field private grainValue:F

.field private highlightsTool:I

.field private highlightsValue:F

.field private orientation:I

.field private recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private saturationTool:I

.field private saturationValue:F

.field private selectedTool:I

.field private shadowsTool:I

.field private shadowsValue:F

.field private sharpenTool:I

.field private sharpenValue:F

.field private showOriginal:Z

.field private textureView:Landroid/view/TextureView;

.field private tintHighlightsColor:I

.field private tintHighlightsTool:I

.field private tintShadowsColor:I

.field private tintShadowsTool:I

.field private toolsView:Landroid/widget/FrameLayout;

.field private tuneItem:Landroid/widget/ImageView;

.field private vignetteTool:I

.field private vignetteValue:F

.field private warmthTool:I

.field private warmthValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rotation"    # I

    .prologue
    .line 1629
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    .line 66
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    .line 67
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    .line 68
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    .line 69
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    .line 70
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    .line 71
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    .line 72
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    .line 73
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    .line 74
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    .line 75
    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    .line 76
    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsTool:I

    .line 77
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsTool:I

    .line 79
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    .line 80
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    .line 81
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    .line 82
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    .line 83
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    .line 84
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    .line 85
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    .line 86
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    .line 87
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    .line 88
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    .line 89
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    .line 90
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    .line 91
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    .line 92
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    .line 93
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .line 98
    const v2, 0x3eb33333    # 0.35f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    .line 99
    new-instance v2, Lorg/telegram/ui/Components/Point;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 100
    const v2, 0x3e19999a    # 0.15f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    .line 101
    const v2, 0x3fc90fdb

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    .line 116
    const/4 v2, 0x4

    new-array v2, v2, [Lorg/telegram/ui/Components/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    .line 1631
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 1632
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    .line 1634
    new-instance v2, Landroid/view/TextureView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1678
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$2;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;)V

    .line 1694
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$3;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0xba

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1709
    new-instance v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1710
    .local v12, "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v2, -0x1000000

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1713
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const v3, -0xc2c2c3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1719
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f070105

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1723
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const v3, -0xae420d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const v3, -0xc2c2c3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1730
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/16 v5, 0x35

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1733
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1734
    .local v15, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v15, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1736
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    .line 1737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const v3, 0x7f020207

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v4, -0x933c01

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$4;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1753
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    .line 1754
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const v3, 0x7f02026a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$5;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1769
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    .line 1770
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    const v3, 0x7f02026c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1772
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$6;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1785
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1786
    new-instance v14, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1787
    .local v14, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 1789
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/16 v5, 0x78

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1794
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    .line 1795
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const/high16 v3, 0x429c0000    # 78.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1798
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1799
    .local v11, "curveTextViewContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1802
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_0
    const/4 v2, 0x4

    if-ge v9, v2, :cond_5

    .line 1803
    new-instance v13, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1804
    .local v13, "frameLayout1":Landroid/widget/FrameLayout;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    new-instance v3, Lorg/telegram/ui/Components/RadioButton;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v2, v2, v9

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v2, v2, v9

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    const/16 v5, 0x31

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1810
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1811
    .local v10, "curveTextView":Landroid/widget/TextView;
    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v10, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1812
    const/16 v2, 0x10

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1813
    if-nez v9, :cond_1

    .line 1814
    const-string/jumbo v2, "CurvesAll"

    const v3, 0x7f0701e0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 1815
    .local v16, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1816
    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v2, v2, v9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 1834
    .end local v16    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/high16 v6, 0x42180000    # 38.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1836
    const/4 v2, -0x2

    const/4 v3, -0x2

    if-nez v9, :cond_4

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1837
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhotoFilterView$7;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1802
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1818
    :cond_1
    const/4 v2, 0x1

    if-ne v9, v2, :cond_2

    .line 1819
    const-string/jumbo v2, "CurvesRed"

    const v3, 0x7f0701e3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 1820
    .restart local v16    # "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1821
    const v2, -0x19b2b3

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1822
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v2, v2, v9

    const v3, -0x19b2b3

    const v4, -0x19b2b3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto :goto_1

    .line 1823
    .end local v16    # "str":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    if-ne v9, v2, :cond_3

    .line 1824
    const-string/jumbo v2, "CurvesGreen"

    const v3, 0x7f0701e2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 1825
    .restart local v16    # "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1826
    const v2, -0xa544a1

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1827
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v2, v2, v9

    const v3, -0xa544a1

    const v4, -0xa544a1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto/16 :goto_1

    .line 1828
    .end local v16    # "str":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x3

    if-ne v9, v2, :cond_0

    .line 1829
    const-string/jumbo v2, "CurvesBlue"

    const v3, 0x7f0701e1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 1830
    .restart local v16    # "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1831
    const v2, -0xc25212

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v2, v2, v9

    const v3, -0xc25212

    const v4, -0xc25212

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto/16 :goto_1

    .line 1836
    .end local v16    # "str":Ljava/lang/String;
    :cond_4
    const/high16 v4, 0x41f00000    # 30.0f

    goto/16 :goto_2

    .line 1850
    .end local v10    # "curveTextView":Landroid/widget/TextView;
    .end local v13    # "frameLayout1":Landroid/widget/FrameLayout;
    :cond_5
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/16 v2, 0x118

    const/high16 v3, 0x42700000    # 60.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1854
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    .line 1855
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1856
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const-string/jumbo v3, "BlurOff"

    const v4, 0x7f0700d6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/16 v4, 0x50

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$8;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1872
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const-string/jumbo v3, "BlurRadial"

    const v4, 0x7f0700d7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v2, 0x50

    const/high16 v3, 0x42a00000    # 80.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$9;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1891
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const-string/jumbo v3, "BlurLinear"

    const v4, 0x7f0700d5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1896
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v2, 0x50

    const/high16 v3, 0x42a00000    # 80.0f

    const/16 v4, 0x33

    const/high16 v5, 0x43480000    # 200.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$10;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1910
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    .line 1912
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_6

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1916
    :cond_6
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getEnhanceValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getGrainValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getFadeValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getTintHighlightsIntensityValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getTintShadowsIntensityValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    return v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    return v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    return v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getSharpenValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/Point;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/Point;)Lorg/telegram/ui/Components/Point;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Point;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    return v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getShadowsValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getHighlightsValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getExposureValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)[Lorg/telegram/ui/Components/RadioButton;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getContrastValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    return v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return v0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return p1
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    return v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return v0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return p1
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    return v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return v0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return v0
.end method

.method static synthetic access$6702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return p1
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    return v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return v0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getSaturationValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    return v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return v0
.end method

.method static synthetic access$7102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    return v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return v0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    return v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return v0
.end method

.method static synthetic access$7502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return p1
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    return v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return v0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return p1
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return v0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getWarmthValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    return v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return v0
.end method

.method static synthetic access$8102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return p1
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsTool:I

    return v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsTool:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getVignetteValue()F

    move-result v0

    return v0
.end method

.method private fixLayout(II)V
    .locals 13
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    .line 2030
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    .line 2084
    :cond_0
    :goto_0
    return-void

    .line 2034
    :cond_1
    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr p1, v8

    .line 2035
    const/high16 v8, 0x43560000    # 214.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v8, v10, :cond_3

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    add-int/2addr v8, v9

    sub-int/2addr p2, v8

    .line 2039
    iget v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    rem-int/lit16 v8, v8, 0x168

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_2

    iget v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    rem-int/lit16 v8, v8, 0x168

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_4

    .line 2040
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v1, v8

    .line 2041
    .local v1, "bitmapW":F
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v0, v8

    .line 2046
    .local v0, "bitmapH":F
    :goto_2
    int-to-float v8, p1

    div-float v5, v8, v1

    .line 2047
    .local v5, "scaleX":F
    int-to-float v8, p2

    div-float v6, v8, v0

    .line 2048
    .local v6, "scaleY":F
    cmpl-float v8, v5, v6

    if-lez v8, :cond_5

    .line 2049
    int-to-float v0, p2

    .line 2050
    mul-float v8, v1, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v1, v8

    .line 2056
    :goto_3
    int-to-float v8, p1

    sub-float/2addr v8, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 2057
    .local v2, "bitmapX":I
    int-to-float v8, p2

    sub-float/2addr v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v8

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v8, v10, :cond_6

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_4
    int-to-float v8, v8

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 2059
    .local v3, "bitmapY":I
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2060
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2061
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2062
    float-to-int v8, v1

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2063
    float-to-int v8, v0

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2064
    iget-object v9, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    int-to-float v10, v2

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v8, v11, :cond_7

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_5
    sub-int v8, v3, v8

    int-to-float v8, v8

    iget v11, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v11, v11

    iget v12, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v12, v12

    invoke-virtual {v9, v10, v8, v11, v12}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setActualArea(FFFF)V

    .line 2066
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v9, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setActualAreaSize(FF)V

    .line 2067
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2068
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v8, 0x42180000    # 38.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, p2

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2070
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2071
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, p2

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2073
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2074
    const/high16 v8, 0x42ac0000    # 86.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    mul-int/lit8 v7, v8, 0xa

    .line 2075
    .local v7, "total":I
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2076
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-ge v7, p1, :cond_8

    .line 2077
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2078
    sub-int v8, p1, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 2035
    .end local v0    # "bitmapH":F
    .end local v1    # "bitmapW":F
    .end local v2    # "bitmapX":I
    .end local v3    # "bitmapY":I
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "scaleX":F
    .end local v6    # "scaleY":F
    .end local v7    # "total":I
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2043
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 2044
    .restart local v1    # "bitmapW":F
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .restart local v0    # "bitmapH":F
    goto/16 :goto_2

    .line 2052
    .restart local v5    # "scaleX":F
    .restart local v6    # "scaleY":F
    :cond_5
    int-to-float v1, p1

    .line 2053
    mul-float v8, v0, v5

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v0, v8

    goto/16 :goto_3

    .line 2057
    .restart local v2    # "bitmapX":I
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 2064
    .restart local v3    # "bitmapY":I
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 2080
    .restart local v7    # "total":I
    :cond_8
    const/4 v8, -0x1

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2081
    const/4 v8, 0x0

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0
.end method

.method private getContrastValue()F
    .locals 2

    .prologue
    .line 2109
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method private getEnhanceValue()F
    .locals 2

    .prologue
    .line 2101
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getExposureValue()F
    .locals 2

    .prologue
    .line 2105
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getFadeValue()F
    .locals 2

    .prologue
    .line 2129
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getGrainValue()F
    .locals 2

    .prologue
    .line 2125
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getHighlightsValue()F
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 2097
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v2

    return v0
.end method

.method private getSaturationValue()F
    .locals 3

    .prologue
    .line 2143
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v0, v1, v2

    .line 2144
    .local v0, "parameterValue":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2145
    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    .line 2147
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    return v1
.end method

.method private getShadowsValue()F
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 2093
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v2

    return v0
.end method

.method private getSharpenValue()F
    .locals 3

    .prologue
    .line 2121
    const v0, 0x3de147ae    # 0.11f

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getTintHighlightsIntensityValue()F
    .locals 2

    .prologue
    .line 2133
    const/high16 v0, 0x42480000    # 50.0f

    .line 2134
    .local v0, "tintHighlightsIntensity":F
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v0, v1

    goto :goto_0
.end method

.method private getTintShadowsIntensityValue()F
    .locals 2

    .prologue
    .line 2138
    const/high16 v0, 0x42480000    # 50.0f

    .line 2139
    .local v0, "tintShadowsIntensity":F
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v0, v1

    goto :goto_0
.end method

.method private getVignetteValue()F
    .locals 2

    .prologue
    .line 2117
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getWarmthValue()F
    .locals 2

    .prologue
    .line 2113
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private setShowOriginal(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1972
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    if-ne v0, p1, :cond_1

    .line 1979
    :cond_0
    :goto_0
    return-void

    .line 1975
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    .line 1976
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    goto :goto_0
.end method

.method private updateSelectedBlurType()V
    .locals 8

    .prologue
    const v7, 0x7f02002b

    const/4 v6, -0x1

    const v5, -0xae420d

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1919
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    if-nez v1, :cond_1

    .line 1920
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1921
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1922
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1923
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1925
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const v2, 0x7f02002d

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1926
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1928
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v7, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1929
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1953
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1931
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const v2, 0x7f02002c

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1932
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1934
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1935
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1936
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1937
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1939
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v7, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1940
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1941
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1942
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const v2, 0x7f02002c

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1943
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1945
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const v2, 0x7f02002d

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1946
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1948
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1949
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1950
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1951
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->getTexture()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCancelTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDoneTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2155
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getToolsView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 2151
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hasChanges()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1956
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .line 1957
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 2023
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2088
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->fixLayout(II)V

    .line 2089
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2090
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1961
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 1962
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1963
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 1964
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    .line 1969
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 1966
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1967
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 2014
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shutdown()V

    .line 2016
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .line 2018
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 2019
    return-void
.end method

.method public switchMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    .line 1982
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    if-nez v1, :cond_1

    .line 1983
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    .line 1984
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1985
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1986
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    .line 1988
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2011
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    if-ne v1, v2, :cond_3

    .line 1990
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1991
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1992
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    .line 1994
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1995
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    if-eqz v1, :cond_2

    .line 1996
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    .line 1998
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    goto :goto_0

    .line 1999
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 2000
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2001
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2002
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    .line 2004
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2005
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    .line 2006
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput v3, v1, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    .line 2007
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 2008
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v4, v1, v0

    if-nez v0, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1, v3}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 2007
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    .line 2008
    goto :goto_2
.end method
