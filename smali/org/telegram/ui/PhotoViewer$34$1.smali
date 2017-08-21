.class Lorg/telegram/ui/PhotoViewer$34$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$34;->needChangePanelVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$34;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$34;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$34;

    .prologue
    .line 2603
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$34$1;->this$1:Lorg/telegram/ui/PhotoViewer$34;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2606
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$34$1;->this$1:Lorg/telegram/ui/PhotoViewer$34;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$34$1;->this$1:Lorg/telegram/ui/PhotoViewer$34;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2607
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$34$1;->this$1:Lorg/telegram/ui/PhotoViewer$34;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$8702(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2609
    :cond_0
    return-void
.end method
