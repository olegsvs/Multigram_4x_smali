.class Lorg/telegram/messenger/NotificationsController$11;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->processLoadedUnreadMessages(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$dialogs:Ljava/util/HashMap;

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 737
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$11;->val$messages:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$11;->val$dialogs:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/NotificationsController;->access$402(Lorg/telegram/messenger/NotificationsController;I)I

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/NotificationsController;->access$502(Lorg/telegram/messenger/NotificationsController;I)I

    .line 745
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v21, Lorg/telegram/messenger/AndroidUtilities;->Notifications:Ljava/lang/String;

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 746
    .local v17, "preferences":Landroid/content/SharedPreferences;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 748
    .local v18, "settingsCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->val$messages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 749
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->val$messages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_a

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->val$messages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    .line 751
    .local v9, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v12, v0

    .line 752
    .local v12, "mid":J
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 753
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v22, 0x20

    shl-long v20, v20, v22

    or-long v12, v12, v20

    .line 755
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 749
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 758
    :cond_2
    new-instance v10, Lorg/telegram/messenger/MessageObject;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v10, v9, v0, v1}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 759
    .local v10, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v0, v10}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # operator++ for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$508(Lorg/telegram/messenger/NotificationsController;)I

    .line 762
    :cond_3
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    .line 763
    .local v6, "dialog_id":J
    move-wide v14, v6

    .line 764
    .local v14, "original_dialog_id":J
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 765
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v6, v0

    .line 767
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    .line 768
    .local v19, "value":Ljava/lang/Boolean;
    if-nez v19, :cond_7

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    # invokes: Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I
    invoke-static {v0, v1, v6, v7}, Lorg/telegram/messenger/NotificationsController;->access$2000(Lorg/telegram/messenger/NotificationsController;Landroid/content/SharedPreferences;J)I

    move-result v11

    .line 770
    .local v11, "notifyOverride":I
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v11, v0, :cond_9

    const-string/jumbo v20, "EnableAll"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_5

    long-to-int v0, v6

    move/from16 v20, v0

    if-gez v20, :cond_6

    const-string/jumbo v20, "EnableGroup"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_6

    :cond_5
    if-eqz v11, :cond_9

    :cond_6
    const/16 v20, 0x1

    :goto_2
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 771
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    .end local v11    # "notifyOverride":I
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$300(Lorg/telegram/messenger/NotificationsController;)J

    move-result-wide v20

    cmp-long v20, v6, v20

    if-nez v20, :cond_8

    sget-boolean v20, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v20, :cond_1

    .line 776
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 778
    cmp-long v20, v14, v6

    if-eqz v20, :cond_1

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 770
    .restart local v11    # "notifyOverride":I
    :cond_9
    const/16 v20, 0x0

    goto :goto_2

    .line 783
    .end local v4    # "a":I
    .end local v6    # "dialog_id":J
    .end local v9    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v10    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v11    # "notifyOverride":I
    .end local v12    # "mid":J
    .end local v14    # "original_dialog_id":J
    .end local v19    # "value":Ljava/lang/Boolean;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->val$dialogs:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_b
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 784
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 785
    .restart local v6    # "dialog_id":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    .line 786
    .restart local v19    # "value":Ljava/lang/Boolean;
    if-nez v19, :cond_f

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    # invokes: Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I
    invoke-static {v0, v1, v6, v7}, Lorg/telegram/messenger/NotificationsController;->access$2000(Lorg/telegram/messenger/NotificationsController;Landroid/content/SharedPreferences;J)I

    move-result v11

    .line 788
    .restart local v11    # "notifyOverride":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 789
    .local v16, "override":Ljava/lang/Integer;
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const/4 v11, 0x1

    .line 793
    :cond_c
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v11, v0, :cond_10

    const-string/jumbo v20, "EnableAll"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_d

    long-to-int v0, v6

    move/from16 v20, v0

    if-gez v20, :cond_e

    const-string/jumbo v20, "EnableGroup"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_e

    :cond_d
    if-eqz v11, :cond_10

    :cond_e
    const/16 v20, 0x1

    :goto_4
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 794
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .end local v11    # "notifyOverride":I
    .end local v16    # "override":Ljava/lang/Integer;
    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 799
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 800
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v22

    add-int v22, v22, v5

    move-object/from16 v0, v20

    move/from16 v1, v22

    # setter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$402(Lorg/telegram/messenger/NotificationsController;I)I

    goto/16 :goto_3

    .line 793
    .end local v5    # "count":I
    .restart local v11    # "notifyOverride":I
    .restart local v16    # "override":Ljava/lang/Integer;
    :cond_10
    const/16 v20, 0x0

    goto :goto_4

    .line 803
    .end local v6    # "dialog_id":J
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v11    # "notifyOverride":I
    .end local v16    # "override":Ljava/lang/Integer;
    .end local v19    # "value":Ljava/lang/Boolean;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v20

    if-nez v20, :cond_12

    .line 804
    new-instance v20, Lorg/telegram/messenger/NotificationsController$11$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController$11$1;-><init>(Lorg/telegram/messenger/NotificationsController$11;)V

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 812
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    const-wide/16 v24, 0x3c

    cmp-long v20, v22, v24

    if-gez v20, :cond_14

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    # invokes: Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$100(Lorg/telegram/messenger/NotificationsController;Z)V

    .line 814
    const-string/jumbo v20, "badgeNumber"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v21

    # invokes: Lorg/telegram/messenger/NotificationsController;->setBadge(I)V
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/NotificationsController;->access$1200(Lorg/telegram/messenger/NotificationsController;I)V

    .line 817
    :cond_13
    return-void

    .line 812
    :cond_14
    const/16 v20, 0x0

    goto :goto_5
.end method
