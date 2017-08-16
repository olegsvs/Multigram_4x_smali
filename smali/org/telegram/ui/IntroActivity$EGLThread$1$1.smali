.class Lorg/telegram/ui/IntroActivity$EGLThread$1$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity$EGLThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/IntroActivity$EGLThread$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity$EGLThread$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/IntroActivity$EGLThread$1;

    .prologue
    .line 668
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1$1;->this$2:Lorg/telegram/ui/IntroActivity$EGLThread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1$1;->this$2:Lorg/telegram/ui/IntroActivity$EGLThread$1;

    iget-object v0, v0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    # getter for: Lorg/telegram/ui/IntroActivity$EGLThread;->drawRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$200(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 672
    return-void
.end method
