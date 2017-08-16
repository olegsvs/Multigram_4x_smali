.class Lorg/telegram/ui/ChatActivity$77$4$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$77$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$77$4;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$77$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChatActivity$77$4;

    .prologue
    .line 4832
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 4835
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v0, v5}, Lorg/telegram/ui/ChatActivity;->access$15902(Lorg/telegram/ui/ChatActivity;I)I

    .line 4836
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_3

    .line 4837
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_5

    .line 4838
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    # setter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$13302(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 4839
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v0, :cond_4

    .line 4840
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v0, :cond_1

    .line 4841
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$77$4;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/ChatActivity;->pendingLinkSearchString:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16102(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4843
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v0, :cond_2

    .line 4844
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$77$4;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 4846
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 4860
    :cond_3
    :goto_0
    return-void

    .line 4848
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4849
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    move v1, v5

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 4850
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$13302(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_0

    .line 4854
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4855
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    move v1, v5

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 4856
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$77$4$1;->this$2:Lorg/telegram/ui/ChatActivity$77$4;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77$4;->this$1:Lorg/telegram/ui/ChatActivity$77;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$77;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$13302(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_0
.end method
