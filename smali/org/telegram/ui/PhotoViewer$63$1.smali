.class Lorg/telegram/ui/PhotoViewer$63$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$63;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$63;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$63;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$63;

    .prologue
    .line 6510
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 6513
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6514
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$12402(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 6516
    :cond_0
    return-void
.end method
