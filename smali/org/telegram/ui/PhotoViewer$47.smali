.class Lorg/telegram/ui/PhotoViewer$47;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 3514
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$47;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 19
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3517
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$10502(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3518
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3519
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$4400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3520
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3522
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)I

    move-result v11

    if-nez v11, :cond_1

    .line 3523
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3524
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/telegram/ui/PhotoViewer$CounterView;->setVisibility(I)V

    .line 3526
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$10200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3527
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3528
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 3529
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v4

    .line 3530
    .local v4, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v3

    .line 3532
    .local v3, "bitmapHeight":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v4

    div-float v9, v11, v12

    .line 3533
    .local v9, "scaleX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v3

    div-float v10, v11, v12

    .line 3534
    .local v10, "scaleY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x3

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$10600(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v4

    div-float v6, v11, v12

    .line 3535
    .local v6, "newScaleX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x3

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$10700(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v3

    div-float v7, v11, v12

    .line 3536
    .local v7, "newScaleY":F
    cmpl-float v11, v9, v10

    if-lez v11, :cond_3

    move v8, v10

    .line 3537
    .local v8, "scale":F
    :goto_0
    cmpl-float v11, v6, v7

    if-lez v11, :cond_4

    move v5, v7

    .line 3539
    .local v5, "newScale":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    div-float v12, v5, v8

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToScale:F
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$9802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3540
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToX:F
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$9902(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3541
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v11, 0x42300000    # 44.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v13, v11

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v11, v14, :cond_5

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 v11, v11, 0x2

    :goto_2
    add-int/2addr v11, v13

    int-to-float v11, v11

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToY:F
    invoke-static {v12, v11}, Lorg/telegram/ui/PhotoViewer;->access$10002(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3542
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    # setter for: Lorg/telegram/ui/PhotoViewer;->animationStartTime:J
    invoke-static {v11, v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$10802(Lorg/telegram/ui/PhotoViewer;J)J

    .line 3543
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$10902(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 3546
    .end local v3    # "bitmapHeight":I
    .end local v4    # "bitmapWidth":I
    .end local v5    # "newScale":F
    .end local v6    # "newScaleX":F
    .end local v7    # "newScaleY":F
    .end local v8    # "scale":F
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$9602(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3547
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9600(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    const/4 v12, 0x3

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-string/jumbo v15, "animationValue"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 3548
    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 3549
    # getter for: Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/Components/PhotoPaintView;->getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v14

    const-string/jumbo v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x42fc0000    # 126.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 3550
    # getter for: Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/Components/PhotoPaintView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v14

    const-string/jumbo v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x42fc0000    # 126.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    .line 3547
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3552
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9600(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    const-wide/16 v12, 0xc8

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3553
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9600(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/PhotoViewer$47$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/PhotoViewer$47$1;-><init>(Lorg/telegram/ui/PhotoViewer$47;)V

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3572
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9600(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 3573
    return-void

    .restart local v3    # "bitmapHeight":I
    .restart local v4    # "bitmapWidth":I
    .restart local v6    # "newScaleX":F
    .restart local v7    # "newScaleY":F
    .restart local v9    # "scaleX":F
    .restart local v10    # "scaleY":F
    :cond_3
    move v8, v9

    .line 3536
    goto/16 :goto_0

    .restart local v8    # "scale":F
    :cond_4
    move v5, v6

    .line 3537
    goto/16 :goto_1

    .line 3541
    .restart local v5    # "newScale":F
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3547
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
