.class Lorg/telegram/ui/ChatActivity$42$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$42;->onTextChanged(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$42;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$42;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$42;

    .prologue
    .line 3005
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$42$1;->this$1:Lorg/telegram/ui/ChatActivity$42;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$42$1;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3008
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$42$1;->this$1:Lorg/telegram/ui/ChatActivity$42;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$42;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11900(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 3009
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$42$1;->this$1:Lorg/telegram/ui/ChatActivity$42;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$42;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$42$1;->val$text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/ChatActivity;->searchLinks(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->access$12000(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Z)V

    .line 3010
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$42$1;->this$1:Lorg/telegram/ui/ChatActivity$42;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$42;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$11902(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3012
    :cond_0
    return-void
.end method
