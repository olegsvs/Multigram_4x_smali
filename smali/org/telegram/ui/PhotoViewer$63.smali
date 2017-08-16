.class Lorg/telegram/ui/PhotoViewer$63;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->showQualityView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 6487
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$63;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 6525
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$12402(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 6526
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x42400000    # 48.0f

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6490
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6521
    :goto_0
    return-void

    .line 6493
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$12402(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 6494
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$63;->val$show:Z

    if-eqz v0, :cond_1

    .line 6495
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setVisibility(I)V

    .line 6496
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 6497
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 6498
    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$12500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 6499
    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 6500
    # getter for: Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    .line 6497
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6510
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PhotoViewer$63$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$63$1;-><init>(Lorg/telegram/ui/PhotoViewer$63;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6518
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6519
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6520
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 6503
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setVisibility(I)V

    .line 6504
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 6505
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 6506
    # getter for: Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 6507
    # getter for: Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    .line 6505
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1
.end method
