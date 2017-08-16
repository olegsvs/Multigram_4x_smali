.class Lorg/telegram/ui/ArticleViewer$10;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 2078
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x1

    .line 2081
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne p2, v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2082
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->previewsReqId:I
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 2124
    :cond_0
    :goto_0
    return-void

    .line 2085
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    const-string/jumbo v6, "previews"

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 2086
    .local v0, "object":Lorg/telegram/tgnet/TLObject;
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_user;

    if-eqz v5, :cond_2

    .line 2087
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .end local v0    # "object":Lorg/telegram/tgnet/TLObject;
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v6

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    # invokes: Lorg/telegram/ui/ArticleViewer;->openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V
    invoke-static {v5, v0, v6, v7}, Lorg/telegram/ui/ArticleViewer;->access$4800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$User;J)V

    goto :goto_0

    .line 2089
    .restart local v0    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v5

    iget-wide v2, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    .line 2090
    .local v2, "pageId":J
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V
    invoke-static {v5, v8}, Lorg/telegram/ui/ArticleViewer;->access$4200(Lorg/telegram/ui/ArticleViewer;Z)V

    .line 2091
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 2092
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    const-string/jumbo v5, "previews"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 2093
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ArticleViewer$10$1;

    invoke-direct {v7, p0, v2, v3}, Lorg/telegram/ui/ArticleViewer$10$1;-><init>(Lorg/telegram/ui/ArticleViewer$10;J)V

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v6

    # setter for: Lorg/telegram/ui/ArticleViewer;->previewsReqId:I
    invoke-static {v5, v6}, Lorg/telegram/ui/ArticleViewer;->access$4702(Lorg/telegram/ui/ArticleViewer;I)I

    goto :goto_0

    .line 2117
    .end local v0    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v2    # "pageId":J
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    :cond_3
    if-ltz p2, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_0

    .line 2118
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 2119
    .local v1, "pageBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v5, :cond_0

    .line 2120
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$4900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 2121
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_0
.end method
