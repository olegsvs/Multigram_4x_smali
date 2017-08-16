.class Lorg/telegram/ui/ArticleViewer$RadialProgressView;
.super Ljava/lang/Object;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialProgressView"
.end annotation


# instance fields
.field private alpha:F

.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private backgroundState:I

.field private currentProgress:F

.field private currentProgressTime:J

.field private lastUpdateTime:J

.field private parent:Landroid/view/View;

.field private previousBackgroundState:I

.field private progressRect:Landroid/graphics/RectF;

.field private radOffset:F

.field private scale:F

.field private size:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parentView"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 6611
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6596
    iput-wide v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    .line 6597
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    .line 6598
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    .line 6599
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    .line 6600
    iput-wide v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    .line 6601
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    .line 6602
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->progressRect:Landroid/graphics/RectF;

    .line 6603
    iput v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    .line 6604
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    .line 6605
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->size:I

    .line 6606
    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    .line 6607
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    .line 6608
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    .line 6609
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->scale:F

    .line 6612
    # getter for: Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$12900()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6613
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    # setter for: Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$12902(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;

    .line 6614
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    # setter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$13002(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 6615
    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13000()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6616
    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13000()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6617
    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13000()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6618
    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13000()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6620
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    .line 6621
    return-void
.end method

.method static synthetic access$13800(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    .prologue
    .line 6594
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    return v0
.end method

.method private updateAnimation()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 6624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6625
    .local v2, "newTime":J
    iget-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    sub-long v0, v2, v6

    .line 6626
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    .line 6628
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_1

    .line 6629
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    const-wide/16 v6, 0x168

    mul-long/2addr v6, v0

    long-to-float v6, v6

    const v7, 0x453b8000    # 3000.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    .line 6630
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    sub-float v4, v5, v6

    .line 6631
    .local v4, "progressDiff":F
    cmpl-float v5, v4, v10

    if-lez v5, :cond_0

    .line 6632
    iget-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    .line 6633
    iget-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    const-wide/16 v8, 0x12c

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    .line 6634
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    .line 6635
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    .line 6636
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    .line 6641
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 6643
    .end local v4    # "progressDiff":F
    :cond_1
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eq v5, v12, :cond_3

    .line 6644
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    long-to-float v6, v0

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    .line 6645
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_2

    .line 6646
    iput v10, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    .line 6647
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    .line 6649
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 6651
    :cond_3
    return-void

    .line 6638
    .restart local v4    # "progressDiff":F
    :cond_4
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    # getter for: Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$12900()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    long-to-float v7, v8

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x4

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v2, 0x437f0000    # 255.0f

    .line 6685
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->size:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->scale:F

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 6686
    .local v8, "sizeScaled":I
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$13100(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v9, v0, 0x2

    .line 6687
    .local v9, "x":I
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$13200(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v10, v0, 0x2

    .line 6689
    .local v10, "y":I
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-ge v0, v11, :cond_0

    .line 6690
    # getter for: Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13300()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    aget-object v7, v0, v1

    .line 6691
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 6692
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6693
    add-int v0, v9, v8

    add-int v1, v10, v8

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6694
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6698
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-ge v0, v11, :cond_1

    .line 6699
    # getter for: Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13300()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    aget-object v7, v0, v1

    .line 6700
    .restart local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 6701
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eq v0, v3, :cond_4

    .line 6702
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6706
    :goto_0
    add-int v0, v9, v8

    add-int v1, v10, v8

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6707
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6711
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-ne v0, v4, :cond_3

    .line 6712
    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 6713
    .local v6, "diff":I
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eq v0, v3, :cond_5

    .line 6714
    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13000()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6718
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->progressRect:Landroid/graphics/RectF;

    add-int v1, v9, v6

    int-to-float v1, v1

    add-int v2, v10, v6

    int-to-float v2, v2

    add-int v3, v9, v8

    sub-int/2addr v3, v6

    int-to-float v3, v3

    add-int v4, v10, v8

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6719
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->progressRect:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    add-float/2addr v2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    mul-float/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x0

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13000()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 6720
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->updateAnimation()V

    .line 6722
    .end local v6    # "diff":I
    :cond_3
    return-void

    .line 6704
    .restart local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 6716
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "diff":I
    :cond_5
    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13000()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 6677
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    .line 6678
    return-void
.end method

.method public setBackgroundState(IZ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 6665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    .line 6666
    if-eqz p2, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-eq v0, p1, :cond_0

    .line 6667
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    .line 6668
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    .line 6672
    :goto_0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    .line 6673
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6674
    return-void

    .line 6670
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    goto :goto_0
.end method

.method public setProgress(FZ)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "animated"    # Z

    .prologue
    .line 6654
    if-nez p2, :cond_0

    .line 6655
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    .line 6656
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    .line 6660
    :goto_0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    .line 6661
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    .line 6662
    return-void

    .line 6658
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 6681
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->scale:F

    .line 6682
    return-void
.end method
