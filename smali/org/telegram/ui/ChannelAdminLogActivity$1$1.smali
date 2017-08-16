.class Lorg/telegram/ui/ChannelAdminLogActivity$1$1;
.super Ljava/lang/Object;
.source "ChannelAdminLogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$1;Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelAdminLogActivity$1;

    .prologue
    .line 277
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iput-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 280
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->users:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 281
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->chats:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 282
    const/4 v9, 0x0

    .line 283
    .local v9, "added":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 284
    .local v15, "oldRowsCount":I
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_1

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->events:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    .line 286
    .local v3, "event":Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$000(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 289
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J
    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$100(Lorg/telegram/ui/ChannelAdminLogActivity;)J

    move-result-wide v4

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    # setter for: Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J
    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$102(Lorg/telegram/ui/ChannelAdminLogActivity;J)J

    .line 290
    const/4 v9, 0x1

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$000(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v17

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    new-instance v2, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->messagesByDays:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$200(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v7, v7, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->mid:[I
    invoke-static {v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$300(Lorg/telegram/ui/ChannelAdminLogActivity;)[I

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$Chat;[I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 293
    .end local v3    # "event":Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v14, v2, v15

    .line 294
    .local v14, "newRowsCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z
    invoke-static {v2, v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$402(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    .line 295
    if-nez v9, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v4, 0x1

    # setter for: Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z
    invoke-static {v2, v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$502(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    .line 298
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$600(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$700(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 300
    if-eqz v14, :cond_b

    .line 301
    const/4 v10, 0x0

    .line 302
    .local v10, "end":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$500(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    const/4 v10, 0x1

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemRangeChanged(II)V

    .line 306
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v11

    .line 307
    .local v11, "firstVisPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    .line 308
    .local v12, "firstVisView":Landroid/view/View;
    if-nez v12, :cond_6

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v4

    sub-int v16, v2, v4

    .line 309
    .local v16, "top":I
    if-eqz v10, :cond_7

    const/4 v2, 0x1

    :goto_3
    sub-int v2, v14, v2

    if-lez v2, :cond_4

    .line 310
    if-eqz v10, :cond_8

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v13, v2, 0x1

    .line 311
    .local v13, "insertStart":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object v2

    invoke-virtual {v2, v13}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object v4

    if-eqz v10, :cond_9

    const/4 v2, 0x1

    :goto_5
    sub-int v2, v14, v2

    invoke-virtual {v4, v13, v2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemRangeInserted(II)V

    .line 314
    .end local v13    # "insertStart":I
    :cond_4
    const/4 v2, -0x1

    if-eq v11, v2, :cond_5

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v4

    add-int v5, v11, v14

    if-eqz v10, :cond_a

    const/4 v2, 0x1

    :goto_6
    sub-int v2, v5, v2

    move/from16 v0, v16

    invoke-virtual {v4, v2, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 320
    .end local v10    # "end":Z
    .end local v11    # "firstVisPos":I
    .end local v12    # "firstVisView":Landroid/view/View;
    .end local v16    # "top":I
    :cond_5
    :goto_7
    return-void

    .line 308
    .restart local v10    # "end":Z
    .restart local v11    # "firstVisPos":I
    .restart local v12    # "firstVisView":Landroid/view/View;
    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_2

    .line 309
    .restart local v16    # "top":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 310
    :cond_8
    const/4 v2, 0x1

    goto :goto_4

    .line 312
    .restart local v13    # "insertStart":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 315
    .end local v13    # "insertStart":I
    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 317
    .end local v10    # "end":Z
    .end local v11    # "firstVisPos":I
    .end local v12    # "firstVisView":Landroid/view/View;
    .end local v16    # "top":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$500(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    # getter for: Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemRemoved(I)V

    goto :goto_7
.end method
