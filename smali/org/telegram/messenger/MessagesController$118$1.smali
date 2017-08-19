.class Lorg/telegram/messenger/MessagesController$118$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$118;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$118;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$118;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$118;

    .prologue
    .line 7961
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 7964
    const/16 v22, 0x0

    .line 7965
    .local v22, "updateMask":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 7966
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesRead:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7967
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 7968
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 7969
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->Notifications:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 7970
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v11, 0x0

    .local v11, "b":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 7971
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    .line 7972
    .local v18, "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v20, v0

    .line 7973
    .local v20, "messageId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v0, v18

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7974
    .local v12, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_1

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v0, v20

    if-gt v2, v0, :cond_1

    .line 7975
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 7976
    .local v21, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7977
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 7978
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    .line 7981
    .end local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "diditem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "diditemo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7970
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 7984
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v18    # "key":I
    .end local v20    # "messageId":I
    :cond_2
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7986
    .end local v11    # "b":I
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "b":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 7987
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    .line 7988
    .restart local v18    # "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v20, v0

    .line 7989
    .restart local v20    # "messageId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v0, v18

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7990
    .restart local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_4

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v0, v20

    if-gt v2, v0, :cond_4

    .line 7991
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 7992
    .restart local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7993
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 7994
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    .line 7986
    .end local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 7999
    .end local v11    # "b":I
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v18    # "key":I
    .end local v20    # "messageId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadEncrypted:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 8000
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadEncrypted:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 8001
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagesReadEncrypted:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8002
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    const/16 v2, 0x20

    shl-long v14, v4, v2

    .line 8003
    .local v14, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 8004
    .restart local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_6

    .line 8005
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MessageObject;

    .line 8006
    .local v19, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v4, v2, :cond_6

    .line 8007
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 8008
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    goto :goto_2

    .line 8013
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v14    # "dialog_id":J
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v19    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 8014
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$118;->val$markAsReadMessages:Ljava/util/ArrayList;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8016
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_f

    .line 8017
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_e

    .line 8018
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    .line 8019
    .restart local v18    # "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->val$deletedMessages:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 8020
    .local v10, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v10, :cond_a

    .line 8017
    :cond_9
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 8023
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8024
    if-nez v18, :cond_c

    .line 8025
    const/4 v11, 0x0

    .restart local v11    # "b":I
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_9

    .line 8026
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 8027
    .local v17, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 8028
    .restart local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_b

    .line 8029
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 8025
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 8033
    .end local v11    # "b":I
    .end local v17    # "id":Ljava/lang/Integer;
    .end local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$118;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move/from16 v0, v18

    neg-int v3, v0

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 8034
    .restart local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_9

    .line 8035
    const/4 v11, 0x0

    .restart local v11    # "b":I
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_9

    .line 8036
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_d

    .line 8037
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    goto :goto_4

    .line 8035
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 8044
    .end local v10    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "b":I
    .end local v18    # "key":I
    .end local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$118$1;->this$1:Lorg/telegram/messenger/MessagesController$118;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$118;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroid/util/SparseArray;)V

    .line 8046
    .end local v9    # "a":I
    :cond_f
    if-eqz v22, :cond_10

    .line 8047
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8049
    :cond_10
    return-void
.end method
