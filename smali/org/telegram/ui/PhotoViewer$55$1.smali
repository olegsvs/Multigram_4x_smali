.class Lorg/telegram/ui/PhotoViewer$55$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$55;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$55;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$55;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$55;

    .prologue
    .line 5147
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5150
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5151
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5152
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$11802(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5154
    :cond_0
    return-void
.end method
