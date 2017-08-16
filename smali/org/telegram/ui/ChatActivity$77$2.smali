.class Lorg/telegram/ui/ChatActivity$77$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$77;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$77;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$77;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$77;

    .prologue
    .line 4783
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$77$2;->this$1:Lorg/telegram/ui/ChatActivity$77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4786
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$2;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4787
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$2;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$77$2;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    move-object v3, v2

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 4788
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$2;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$13302(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 4790
    :cond_0
    return-void
.end method
