.class Lorg/telegram/ui/ChatActivity$67$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$67;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$67;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$67;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$67;

    .prologue
    .line 4195
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$67$1;->this$1:Lorg/telegram/ui/ChatActivity$67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4198
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67$1;->this$1:Lorg/telegram/ui/ChatActivity$67;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->hideVoiceHint()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)V

    .line 4199
    return-void
.end method
