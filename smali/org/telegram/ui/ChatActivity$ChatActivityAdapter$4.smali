.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

.field final synthetic val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 11342
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 15

    .prologue
    .line 11345
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v3

    .line 11346
    .local v3, "pipRoundVideoView":Lorg/telegram/ui/Components/PipRoundVideoView;
    if-eqz v3, :cond_0

    .line 11347
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/PipRoundVideoView;->showTemporary(Z)V

    .line 11350
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 11351
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 11352
    .local v2, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v7

    .line 11353
    .local v7, "w":I
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/InstantCameraView;->getCameraRect()Lorg/telegram/ui/Components/Rect;

    move-result-object v5

    .line 11354
    .local v5, "rect":Lorg/telegram/ui/Components/Rect;
    int-to-float v8, v7

    iget v9, v5, Lorg/telegram/ui/Components/Rect;->width:F

    div-float v6, v8, v9

    .line 11355
    .local v6, "scale":F
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 11356
    .local v4, "position":[I
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAlpha(F)V

    .line 11357
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLocationOnScreen([I)V

    .line 11358
    const/4 v8, 0x0

    aget v9, v4, v8

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v4, v8

    .line 11359
    const/4 v8, 0x1

    aget v9, v4, v8

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v4, v8

    .line 11360
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/InstantCameraView;->getCameraContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 11361
    .local v1, "cameraContainer":Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 11362
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 11363
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 11364
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v8, 0x8

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 11365
    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v10

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "scaleX"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v6, v11, v12

    .line 11366
    invoke-static {v1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "scaleY"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v6, v11, v12

    .line 11367
    invoke-static {v1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "translationX"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget v13, v4, v13

    int-to-float v13, v13

    iget v14, v5, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr v13, v14

    aput v13, v11, v12

    .line 11368
    invoke-static {v1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "translationY"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v4, v13

    int-to-float v13, v13

    iget v14, v5, Lorg/telegram/ui/Components/Rect;->y:F

    sub-float/2addr v13, v14

    aput v13, v11, v12

    .line 11369
    invoke-static {v1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 11370
    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/InstantCameraView;->getSwitchButtonView()Landroid/view/View;

    move-result-object v10

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 11371
    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/InstantCameraView;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 11372
    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/InstantCameraView;->getMuteImageView()Landroid/view/View;

    move-result-object v10

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    .line 11364
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 11373
    const-wide/16 v8, 0xb4

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 11374
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11375
    new-instance v8, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4$1;

    invoke-direct {v8, p0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11396
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 11397
    const/4 v8, 0x1

    return v8
.end method
