.class Lorg/telegram/ui/PhotoViewer$41$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$41;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$41;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$41;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$41;

    .prologue
    .line 3338
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 3347
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoCropView;->onAppeared()V

    .line 3349
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$9602(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3350
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget v1, v1, Lorg/telegram/ui/PhotoViewer$41;->val$mode:I

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$7802(Lorg/telegram/ui/PhotoViewer;I)I

    .line 3351
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$9802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3352
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$9902(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3353
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$10002(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3354
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$3602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3355
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$3900(Lorg/telegram/ui/PhotoViewer;F)V

    .line 3356
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 3357
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 3341
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3342
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41$1;->this$1:Lorg/telegram/ui/PhotoViewer$41;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 3343
    return-void
.end method
