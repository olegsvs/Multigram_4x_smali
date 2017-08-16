.class Lorg/telegram/messenger/MessagesStorage$27;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->emptyMessagesMedia(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$mids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1616
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$27;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$27;->val$mids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1620
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .local v7, "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1622
    .local v9, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage$27;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT data, mid, date, uid FROM messages WHERE mid IN (%s)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$27;->val$mids:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 1623
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1624
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    .line 1625
    .local v4, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v4, :cond_0

    .line 1626
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v4, v12, v13}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v8

    .line 1627
    .local v8, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1628
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v12, :cond_0

    .line 1629
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v12, :cond_3

    .line 1630
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    .line 1631
    .local v6, "file":Ljava/io/File;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 1632
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    :cond_1
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    .line 1635
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 1636
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1638
    :cond_2
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;-><init>()V

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1650
    .end local v6    # "file":Ljava/io/File;
    :goto_1
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v13, v13, -0x2

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1651
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    iput v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 1652
    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    iput v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1653
    const/4 v12, 0x3

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v12

    iput-wide v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1654
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1697
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v7    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v8    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v9    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :catch_0
    move-exception v5

    .line 1698
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1700
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1639
    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v7    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v8    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v9    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_3
    :try_start_1
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v12, :cond_0

    .line 1640
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1641
    .local v10, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v13, 0x1

    invoke-static {v10, v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    .line 1642
    .restart local v6    # "file":Ljava/io/File;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 1643
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1646
    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_5
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_1

    .line 1658
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v8    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_6
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1659
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1660
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage$27;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    .line 1661
    .local v11, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_9

    .line 1662
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1664
    .restart local v8    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v8}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v12

    invoke-direct {v4, v12}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1665
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v8, v4}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1667
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1668
    const/4 v12, 0x1

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v14, v13

    invoke-virtual {v11, v12, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1669
    const/4 v12, 0x2

    iget-wide v14, v8, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v11, v12, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1670
    const/4 v12, 0x3

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1671
    const/4 v12, 0x4

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1672
    const/4 v12, 0x5

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1673
    const/4 v12, 0x6

    invoke-virtual {v11, v12, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1674
    const/4 v13, 0x7

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v11, v13, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1675
    const/16 v12, 0x8

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1676
    iget v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v12, v12, 0x400

    if-eqz v12, :cond_8

    .line 1677
    const/16 v12, 0x9

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1681
    :goto_6
    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1682
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1684
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1661
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1674
    :cond_7
    const/4 v12, 0x0

    goto :goto_5

    .line 1679
    :cond_8
    const/16 v12, 0x9

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage$27;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # invokes: Lorg/telegram/messenger/MessagesStorage;->getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I
    invoke-static {v13, v8}, Lorg/telegram/messenger/MessagesStorage;->access$900(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto :goto_6

    .line 1686
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v8    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_9
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1687
    new-instance v12, Lorg/telegram/messenger/MessagesStorage$27$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9}, Lorg/telegram/messenger/MessagesStorage$27$1;-><init>(Lorg/telegram/messenger/MessagesStorage$27;Ljava/util/ArrayList;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1696
    .end local v2    # "a":I
    .end local v11    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v13}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
