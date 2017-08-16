.class Lorg/telegram/messenger/MessagesController$58$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$58;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$58;

.field final synthetic val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$58;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$58;

    .prologue
    .line 3195
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 3200
    :try_start_0
    sget v2, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    .line 3201
    const/16 v21, 0x0

    .line 3202
    .local v21, "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 3203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3204
    .local v22, "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "search migrate id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v0, v22

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3205
    if-eqz v21, :cond_0

    move-object/from16 v0, v22

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v21

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v2, v3, :cond_1

    .line 3206
    :cond_0
    move-object/from16 v21, v22

    .line 3202
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3209
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "migrate step with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v0, v21

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3210
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_4

    .line 3211
    move-object/from16 v0, v21

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3223
    .local v5, "offsetId":I
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3224
    .local v17, "dids":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 3225
    .local v16, "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_7

    .line 3226
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3227
    .local v15, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_5

    .line 3228
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3234
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 3235
    const-string/jumbo v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3237
    :cond_3
    iget-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3238
    iget-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3225
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 3213
    .end local v5    # "offsetId":I
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v16    # "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v17    # "dids":Ljava/lang/StringBuilder;
    :cond_4
    const-string/jumbo v2, "migrate stop due to not 100 dialogs"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3214
    const v2, 0x7fffffff

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    .line 3215
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    .line 3216
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    .line 3217
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    .line 3218
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    .line 3219
    sget-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    .line 3220
    const/4 v5, -0x1

    .restart local v5    # "offsetId":I
    goto/16 :goto_1

    .line 3229
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v16    # "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .restart local v17    # "dids":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_6

    .line 3230
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3336
    .end local v5    # "offsetId":I
    .end local v11    # "a":I
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v16    # "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v17    # "dids":Ljava/lang/StringBuilder;
    .end local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_0
    move-exception v20

    .line 3337
    .local v20, "e":Ljava/lang/Exception;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3338
    new-instance v2, Lorg/telegram/messenger/MessagesController$58$1$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/messenger/MessagesController$58$1$1;-><init>(Lorg/telegram/messenger/MessagesController$58$1;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3345
    .end local v20    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 3232
    .restart local v5    # "offsetId":I
    .restart local v11    # "a":I
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v16    # "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .restart local v17    # "dids":Ljava/lang/StringBuilder;
    .restart local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_6
    :try_start_1
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v2, v2

    iput-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_3

    .line 3240
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "SELECT did FROM dialogs WHERE did IN (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    .line 3241
    .local v13, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_8
    :goto_5
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3242
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 3243
    .local v18, "did":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3244
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v15, :cond_8

    .line 3245
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3246
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_8

    .line 3247
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3248
    .restart local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-eqz v2, :cond_a

    .line 3246
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 3251
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3252
    add-int/lit8 v11, v11, -0x1

    .line 3253
    move-object/from16 v0, v22

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v3, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ne v2, v3, :cond_9

    .line 3254
    const/4 v2, 0x0

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    goto :goto_5

    .line 3260
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v18    # "did":J
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_b
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "migrate found missing dialogs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3262
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT min(date) FROM dialogs WHERE date != 0 AND did >> 32 IN (0, -1)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    .line 3263
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3264
    const v2, 0x55e4dc70

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 3265
    .local v14, "date":I
    const/4 v11, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_e

    .line 3266
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3267
    .restart local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v22

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v2, v14, :cond_d

    .line 3268
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$offset:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 3269
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    .line 3270
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    .line 3271
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    .line 3272
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    .line 3273
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    .line 3274
    sget-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    .line 3275
    const/4 v5, -0x1

    .line 3276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "migrate stop due to reached loaded dialogs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    int-to-long v6, v14

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3278
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3279
    add-int/lit8 v11, v11, -0x1

    .line 3280
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3281
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v15, :cond_d

    .line 3282
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3265
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 3286
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_e
    if-eqz v21, :cond_f

    move-object/from16 v0, v21

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v2, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$offset:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_f

    .line 3287
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    .line 3288
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    .line 3289
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    .line 3290
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    .line 3291
    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    .line 3292
    sget-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    .line 3293
    const/4 v5, -0x1

    .line 3294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "migrate stop due to reached loaded dialogs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    int-to-long v6, v14

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3297
    .end local v14    # "date":I
    :cond_f
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3299
    move-object/from16 v0, v21

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 3300
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_12

    .line 3301
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 3302
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 3303
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 3304
    const/4 v11, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_10

    .line 3305
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3306
    .local v12, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    if-ne v2, v3, :cond_11

    .line 3307
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 3335
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V

    goto/16 :goto_4

    .line 3304
    .restart local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 3311
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_12
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_14

    .line 3312
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 3313
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 3314
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 3315
    const/4 v11, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_10

    .line 3316
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3317
    .restart local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    if-ne v2, v3, :cond_13

    .line 3318
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    goto :goto_9

    .line 3315
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 3322
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_14
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_10

    .line 3323
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 3324
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 3325
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 3326
    const/4 v11, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_10

    .line 3327
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$User;

    .line 3328
    .local v23, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    if-ne v2, v3, :cond_15

    .line 3329
    move-object/from16 v0, v23

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 3326
    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_b
.end method
