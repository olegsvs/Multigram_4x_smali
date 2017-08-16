.class Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter$8;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    .prologue
    .line 462
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 465
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$query:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;
    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 469
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 471
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I
    invoke-static {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1502(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I

    .line 472
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-boolean v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$cache:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-nez v7, :cond_3

    .line 473
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$query:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v10, v10, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$offset:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v6, v8, v9, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$300(Lorg/telegram/ui/Adapters/MentionsAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v7, :cond_0

    .line 476
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    .line 477
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-boolean v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$cache:Z

    if-nez v7, :cond_4

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->cache_time:I

    if-eqz v7, :cond_4

    .line 478
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$key:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 480
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->next_offset:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1602(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_5

    .line 482
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1702(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 483
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1802(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 485
    :cond_5
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 486
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 487
    .local v4, "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v7, :cond_7

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez v7, :cond_7

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-nez v7, :cond_7

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz v7, :cond_7

    .line 488
    :cond_6
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 489
    add-int/lit8 v0, v0, -0x1

    .line 491
    :cond_7
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->query_id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    .line 492
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 494
    .end local v4    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_8
    const/4 v1, 0x0

    .line 495
    .local v1, "added":Z
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$offset:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_d

    .line 496
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1902(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 497
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->gallery:Z

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2002(Lorg/telegram/ui/Adapters/MentionsAdapter;Z)Z

    .line 505
    :cond_a
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;
    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2102(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 506
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;
    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2202(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 507
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;
    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2302(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 508
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;
    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2402(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 509
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;
    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2502(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 510
    if-eqz v1, :cond_11

    .line 511
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1800(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v7

    if-eqz v7, :cond_e

    move v2, v5

    .line 512
    .local v2, "hasTop":Z
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, v7, v9

    if-eqz v2, :cond_f

    move v7, v5

    :goto_4
    add-int/2addr v7, v9

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyItemChanged(I)V

    .line 513
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, v7, v9

    if-eqz v2, :cond_10

    move v7, v5

    :goto_5
    add-int/2addr v7, v9

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyItemRangeInserted(II)V

    .line 517
    .end local v2    # "hasTop":Z
    :goto_6
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1800(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v8

    if-eqz v8, :cond_c

    :cond_b
    move v6, v5

    :cond_c
    invoke-interface {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    .line 499
    :cond_d
    const/4 v1, 0x1

    .line 500
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 501
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 502
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const-string/jumbo v8, ""

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1602(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    move v2, v6

    .line 511
    goto/16 :goto_3

    .restart local v2    # "hasTop":Z
    :cond_f
    move v7, v6

    .line 512
    goto :goto_4

    :cond_10
    move v7, v6

    .line 513
    goto :goto_5

    .line 515
    .end local v2    # "hasTop":Z
    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    goto :goto_6
.end method
