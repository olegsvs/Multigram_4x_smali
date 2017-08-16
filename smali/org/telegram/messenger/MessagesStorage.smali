.class public Lorg/telegram/messenger/MessagesStorage;
.super Ljava/lang/Object;
.source "MessagesStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagesStorage$Hole;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/MessagesStorage;

.field public static lastDateValue:I

.field public static lastPtsValue:I

.field public static lastQtsValue:I

.field public static lastSecretVersion:I

.field public static lastSeqValue:I

.field public static secretG:I

.field public static secretPBytes:[B


# instance fields
.field private cacheFile:Ljava/io/File;

.field private database:Lorg/telegram/SQLite/SQLiteDatabase;

.field private lastSavedDate:I

.field private lastSavedPts:I

.field private lastSavedQts:I

.field private lastSavedSeq:I

.field private lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

.field private storageQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 47
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 48
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 49
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 50
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 51
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 52
    sput v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 59
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "storageQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 54
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    .line 55
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    .line 56
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    .line 57
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesStorage;->openDatabase(Z)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->fixNotificationSettings()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Landroid/util/SparseArray;
    .param p3, "x3"    # Landroid/util/SparseArray;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->putDialogsInternal(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesStorage;->putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Integer;III)[J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Integer;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUsersInternal(Ljava/util/ArrayList;ZZ)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Landroid/util/SparseArray;
    .param p2, "x2"    # Landroid/util/SparseArray;
    .param p3, "x3"    # Ljava/util/HashMap;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JI)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MessagesStorage;->doneHolesInTable(Ljava/lang/String;JI)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JII)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JII)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->cleanupInternal()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MessagesStorage;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MessagesStorage;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MessagesStorage;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    return p1
.end method

.method static synthetic access$602(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v0

    return v0
.end method

.method public static addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5850
    .local p1, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-eqz v3, :cond_0

    .line 5851
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_6

    .line 5852
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5853
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5861
    :cond_0
    :goto_0
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5862
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5864
    :cond_1
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v3, :cond_7

    .line 5865
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5866
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5868
    :cond_2
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5869
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5871
    :cond_3
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5872
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5874
    :cond_4
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5875
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 5876
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5877
    .local v2, "uid":Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5878
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5875
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5856
    .end local v0    # "a":I
    .end local v2    # "uid":Ljava/lang/Integer;
    :cond_6
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5857
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5883
    :cond_7
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 5884
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 5885
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 5886
    .local v1, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v3, :cond_9

    .line 5887
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v1    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5884
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5888
    .restart local v1    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_9
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v3, :cond_8

    .line 5889
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    .end local v1    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5893
    .end local v0    # "a":I
    :cond_a
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_b

    .line 5894
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 5895
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5898
    :cond_b
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v3, :cond_d

    .line 5899
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    if-eqz v3, :cond_c

    .line 5900
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 5901
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5904
    :cond_c
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    if-eqz v3, :cond_d

    .line 5905
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 5906
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5910
    :cond_d
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-gez v3, :cond_e

    .line 5911
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 5912
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5915
    :cond_e
    return-void
.end method

.method private cleanupInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 538
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 539
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 540
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 541
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 542
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 544
    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    .line 545
    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    .line 546
    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    .line 547
    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    .line 549
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 550
    sput v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 551
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->close()V

    .line 553
    iput-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    .line 555
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 557
    iput-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    .line 559
    :cond_1
    return-void
.end method

.method private closeHolesInTable(Ljava/lang/String;JII)V
    .locals 18
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "minId"    # I
    .param p5, "maxId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5623
    const/4 v8, 0x0

    .line 5624
    .local v8, "ok":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SELECT start, end FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " WHERE uid = %d AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 5625
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v7, 0x0

    .line 5626
    .local v7, "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 5627
    if-nez v7, :cond_1

    .line 5628
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5630
    .restart local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    .line 5631
    .local v9, "start":I
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 5632
    .local v5, "end":I
    if-ne v9, v5, :cond_2

    const/4 v11, 0x1

    if-eq v9, v11, :cond_0

    .line 5635
    :cond_2
    new-instance v11, Lorg/telegram/messenger/MessagesStorage$Hole;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v9, v5}, Lorg/telegram/messenger/MessagesStorage$Hole;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5676
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v5    # "end":I
    .end local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    .end local v9    # "start":I
    :catch_0
    move-exception v4

    .line 5677
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5679
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 5637
    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5638
    if-eqz v7, :cond_3

    .line 5639
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_3

    .line 5640
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessagesStorage$Hole;

    .line 5641
    .local v6, "hole":Lorg/telegram/messenger/MessagesStorage$Hole;
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p5

    if-lt v0, v11, :cond_6

    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p4

    if-gt v0, v11, :cond_6

    .line 5642
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DELETE FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5639
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5643
    :cond_6
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p5

    if-lt v0, v11, :cond_7

    .line 5644
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, p4

    if-eq v11, v0, :cond_5

    .line 5646
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "UPDATE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " SET end = %d WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 5647
    :catch_1
    move-exception v4

    .line 5648
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 5651
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p4

    if-gt v0, v11, :cond_8

    .line 5652
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v0, p5

    if-eq v11, v0, :cond_5

    .line 5654
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "UPDATE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " SET start = %d WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 5655
    :catch_2
    move-exception v4

    .line 5656
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 5660
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DELETE FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5661
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "REPLACE INTO "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " VALUES(?, ?, ?)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    .line 5662
    .local v10, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5663
    const/4 v11, 0x1

    move-wide/from16 v0, p2

    invoke-virtual {v10, v11, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5664
    const/4 v11, 0x2

    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5665
    const/4 v11, 0x3

    move/from16 v0, p4

    invoke-virtual {v10, v11, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5666
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5667
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5668
    const/4 v11, 0x1

    move-wide/from16 v0, p2

    invoke-virtual {v10, v11, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5669
    const/4 v11, 0x2

    move/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5670
    const/4 v11, 0x3

    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5671
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5672
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method

.method public static createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V
    .locals 6
    .param p0, "did"    # J
    .param p2, "state5"    # Lorg/telegram/SQLite/SQLitePreparedStatement;
    .param p3, "state6"    # Lorg/telegram/SQLite/SQLitePreparedStatement;
    .param p4, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6076
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6077
    invoke-virtual {p2, v2, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6078
    if-ne p4, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p2, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6079
    invoke-virtual {p2, v5, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6080
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 6082
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 6083
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6084
    invoke-virtual {p3, v2, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6085
    invoke-virtual {p3, v4, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6086
    if-ne p4, v2, :cond_1

    move v1, v2

    :goto_2
    invoke-virtual {p3, v5, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6087
    const/4 v1, 0x4

    invoke-virtual {p3, v1, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6088
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 6082
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "b":I
    :cond_0
    move v1, v3

    .line 6078
    goto :goto_0

    .restart local v0    # "b":I
    :cond_1
    move v1, v3

    .line 6086
    goto :goto_2

    .line 6090
    :cond_2
    return-void
.end method

.method private doneHolesInTable(Ljava/lang/String;JI)V
    .locals 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "max_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5487
    if-nez p4, :cond_0

    .line 5488
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE uid = %d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5492
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REPLACE INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " VALUES(?, ?, ?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 5493
    .local v0, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5494
    invoke-virtual {v0, v6, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5495
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5496
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5497
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5498
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5499
    return-void

    .line 5490
    .end local v0    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE uid = %d AND start = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_0
.end method

.method private fixNotificationSettings()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$4;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 657
    return-void
.end method

.method private fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 5
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/16 v4, 0x46

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5469
    if-nez p1, :cond_1

    .line 5484
    :cond_0
    :goto_0
    return-void

    .line 5472
    :cond_1
    const/4 v0, 0x0

    .line 5473
    .local v0, "ok":Z
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    if-eqz v1, :cond_2

    .line 5474
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v1, v1

    if-nez v1, :cond_0

    .line 5475
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-array v2, v2, [B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    .line 5476
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    aput-byte v4, v1, v3

    goto :goto_0

    .line 5478
    :cond_2
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v1, :cond_0

    .line 5479
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5480
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-array v2, v2, [B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    .line 5481
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    aput-byte v4, v1, v3

    .line 5482
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_0
.end method

.method private formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 2
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 3812
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3813
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3814
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3816
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 3817
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3818
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3822
    :cond_2
    const-string/jumbo v1, ";;;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3823
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 3824
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3826
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lorg/telegram/messenger/MessagesStorage;
    .locals 4

    .prologue
    .line 62
    sget-object v0, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    .line 63
    .local v0, "localInstance":Lorg/telegram/messenger/MessagesStorage;
    if-nez v0, :cond_1

    .line 64
    const-class v3, Lorg/telegram/messenger/MessagesStorage;

    monitor-enter v3

    .line 65
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v1, Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesStorage;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .local v1, "localInstance":Lorg/telegram/messenger/MessagesStorage;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 69
    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 71
    :cond_1
    return-object v0

    .line 69
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    goto :goto_0
.end method

.method private getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 3
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v0, 0x1

    .line 4152
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v1, :cond_2

    .line 4163
    :cond_1
    :goto_0
    return v0

    .line 4154
    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_3

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v1, :cond_3

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v2, 0x3c

    if-le v1, v2, :cond_1

    .line 4156
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4157
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4158
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4160
    :cond_4
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4161
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 4163
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 4355
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->selective:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPendingTasks()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$7;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 816
    return-void
.end method

.method private markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 30
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5213
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5214
    .local v9, "dialogsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 5215
    .local v10, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_8

    .line 5216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5217
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_1

    .line 5218
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 5219
    .local v20, "messageId":J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v25, 0x20

    shl-long v26, v26, v25

    or-long v20, v20, v26

    .line 5220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_0

    .line 5221
    const/16 v25, 0x2c

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5223
    :cond_0
    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5217
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5225
    .end local v20    # "messageId":J
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5229
    .end local v4    # "a":I
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .local v17, "ids":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v27, "SELECT uid, data, read_state, out FROM messages WHERE mid IN(%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 5230
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 5231
    .local v16, "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 5233
    .local v6, "currentUser":I
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 5234
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v12

    .line 5235
    .local v12, "did":J
    int-to-long v0, v6

    move-wide/from16 v26, v0

    cmp-long v25, v12, v26

    if-eqz v25, :cond_2

    .line 5238
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v22

    .line 5239
    .local v22, "read_state":I
    if-eqz v22, :cond_3

    const/16 v25, 0x2

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    :cond_3
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v25

    if-nez v25, :cond_5

    .line 5240
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 5241
    .local v24, "unread_count":Ljava/lang/Integer;
    if-nez v24, :cond_4

    .line 5242
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 5244
    :cond_4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 5245
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5247
    .end local v24    # "unread_count":Ljava/lang/Integer;
    :cond_5
    long-to-int v0, v12

    move/from16 v25, v0

    if-nez v25, :cond_2

    .line 5250
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 5251
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_2

    .line 5252
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v18

    .line 5253
    .local v18, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5254
    if-eqz v18, :cond_2

    .line 5255
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 5256
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_6
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 5257
    .local v19, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v15

    .line 5258
    .local v15, "file":Ljava/io/File;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_6

    .line 5259
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 5275
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v12    # "did":J
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v19    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v22    # "read_state":I
    :catch_0
    move-exception v11

    .line 5276
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5278
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5279
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V

    .line 5281
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 5282
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 5283
    .local v12, "did":Ljava/lang/Long;
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    const-string/jumbo v27, "UPDATE dialogs SET unread_count = max(0, ((SELECT unread_count FROM dialogs WHERE did = ?) - ?)) WHERE did = ?"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v23

    .line 5285
    .local v23, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5286
    const/16 v25, 0x1

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5287
    const/16 v27, 0x2

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5288
    const/16 v25, 0x3

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5289
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5290
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 5300
    .end local v6    # "currentUser":I
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v9    # "dialogsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v10    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v12    # "did":Ljava/lang/Long;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v16    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v17    # "ids":Ljava/lang/String;
    .end local v23    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_1
    move-exception v11

    .line 5301
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5303
    const/4 v9, 0x0

    .end local v11    # "e":Ljava/lang/Exception;
    :goto_5
    return-object v9

    .line 5227
    .restart local v9    # "dialogsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v10    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_8
    :try_start_3
    const-string/jumbo v25, ","

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v17

    .restart local v17    # "ids":Ljava/lang/String;
    goto/16 :goto_1

    .line 5262
    .restart local v6    # "currentUser":I
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v12, "did":J
    .restart local v16    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v18    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v22    # "read_state":I
    :cond_9
    :try_start_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 5263
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v15

    .line 5264
    .restart local v15    # "file":Ljava/io/File;
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_a

    .line 5265
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5267
    :cond_a
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v15

    .line 5268
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_2

    .line 5269
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 5293
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v12    # "did":J
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v22    # "read_state":I
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v27, "DELETE FROM messages WHERE mid IN(%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v27, "DELETE FROM bot_keyboard WHERE mid IN(%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v27, "DELETE FROM messages_seq WHERE mid IN(%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v27, "DELETE FROM media_v2 WHERE mid IN(%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    const-string/jumbo v26, "DELETE FROM media_counts_v2 WHERE 1"

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5298
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5
.end method

.method private markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5102
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p2, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p3, "encryptedMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 5103
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v2, v12, :cond_0

    .line 5104
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 5105
    .local v7, "key":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 5106
    .local v10, "messageId":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "UPDATE messages SET read_state = read_state | 1 WHERE uid = %d AND mid > 0 AND mid <= %d AND read_state IN(0,2) AND out = 0"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5109
    .end local v2    # "b":I
    .end local v7    # "key":I
    .end local v10    # "messageId":J
    :cond_0
    if-eqz p2, :cond_1

    .line 5110
    const/4 v2, 0x0

    .restart local v2    # "b":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v2, v12, :cond_1

    .line 5111
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 5112
    .restart local v7    # "key":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 5113
    .restart local v10    # "messageId":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "UPDATE messages SET read_state = read_state | 1 WHERE uid = %d AND mid > 0 AND mid <= %d AND read_state IN(0,2) AND out = 1"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5110
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5116
    .end local v2    # "b":I
    .end local v7    # "key":I
    .end local v10    # "messageId":J
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 5117
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 5118
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v14, v12

    const/16 v12, 0x20

    shl-long v4, v14, v12

    .line 5119
    .local v4, "dialog_id":J
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 5120
    .local v8, "max_date":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v14, "UPDATE messages SET read_state = read_state | 1 WHERE uid = ? AND date <= ? AND read_state IN(0,2) AND out = 1"

    invoke-virtual {v12, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    .line 5121
    .local v9, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5122
    const/4 v12, 0x1

    invoke-virtual {v9, v12, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5123
    const/4 v12, 0x2

    invoke-virtual {v9, v12, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5124
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5125
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 5128
    .end local v4    # "dialog_id":J
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "max_date":I
    .end local v9    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v3

    .line 5129
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5131
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private putChatsInternal(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3893
    .local p1, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3945
    :cond_0
    :goto_0
    return-void

    .line 3896
    :cond_1
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v9, "REPLACE INTO chats VALUES(?, ?, ?)"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 3897
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 3898
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3899
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v8, :cond_3

    .line 3900
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "SELECT data FROM chats WHERE uid = %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 3901
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3903
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v2, v8}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    .line 3904
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v3, :cond_2

    .line 3905
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 3906
    .local v6, "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3907
    if-eqz v6, :cond_2

    .line 3908
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 3909
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 3910
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 3911
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 3912
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 3913
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 3914
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 3915
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 3916
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3921
    :goto_2
    move-object v1, v6

    .line 3928
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    :goto_3
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3930
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_3
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3931
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$Chat;->getObjectSize()I

    move-result v8

    invoke-direct {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3932
    .restart local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3933
    const/4 v8, 0x1

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3934
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 3935
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 3936
    .local v5, "name":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 3940
    .end local v5    # "name":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x3

    invoke-virtual {v7, v8, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3941
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3942
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3897
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3918
    .restart local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v6    # "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    const/4 v8, 0x0

    :try_start_1
    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 3919
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v8, v8, -0x41

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3924
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :catch_0
    move-exception v4

    .line 3925
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3938
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_5
    const/4 v8, 0x2

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    .line 3944
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_6
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_0
.end method

.method private putDialogsInternal(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
    .locals 30
    .param p1, "dialogs"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .param p2, "check"    # Z

    .prologue
    .line 6094
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 6095
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 6096
    .local v16, "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_0

    .line 6097
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Message;

    .line 6098
    .local v12, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6096
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6101
    .end local v12    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_f

    .line 6102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string/jumbo v26, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 6103
    .local v17, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string/jumbo v26, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v18

    .line 6104
    .local v18, "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string/jumbo v26, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v19

    .line 6105
    .local v19, "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string/jumbo v26, "REPLACE INTO dialog_settings VALUES(?, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v20

    .line 6106
    .local v20, "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string/jumbo v26, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    .line 6107
    .local v21, "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string/jumbo v26, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v22

    .line 6109
    .local v22, "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_e

    .line 6110
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 6112
    .local v9, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v23, v26, v28

    if-nez v23, :cond_1

    .line 6113
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 6114
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 6121
    :cond_1
    :goto_2
    if-eqz p2, :cond_5

    .line 6122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "SELECT did FROM dialogs WHERE did = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 6123
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    .line 6124
    .local v11, "exists":Z
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 6125
    if-eqz v11, :cond_5

    .line 6109
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "exists":Z
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 6115
    :cond_3
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 6116
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6213
    .end local v6    # "a":I
    .end local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v16    # "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v18    # "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v19    # "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v20    # "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v21    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v22    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v10

    .line 6214
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6216
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 6118
    .restart local v6    # "a":I
    .restart local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v16    # "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v18    # "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v19    # "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v20    # "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v21    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v22    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_4
    :try_start_1
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_2

    .line 6129
    :cond_5
    const/4 v13, 0x0

    .line 6131
    .local v13, "messageDate":I
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Message;

    .line 6132
    .restart local v12    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v12, :cond_9

    .line 6133
    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 6135
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 6136
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v12}, Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 6139
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 6140
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v12}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v23

    move/from16 v0, v23

    invoke-direct {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 6141
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v12, v8}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6143
    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v14, v0

    .line 6144
    .local v14, "messageId":J
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 6145
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v23, 0x20

    shl-long v26, v26, v23

    or-long v14, v14, v26

    .line 6148
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6149
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6150
    const/16 v23, 0x2

    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6151
    const/16 v23, 0x3

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6152
    const/16 v23, 0x4

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6153
    const/16 v23, 0x5

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6154
    const/16 v23, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 6155
    const/16 v26, 0x7

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v23

    if-eqz v23, :cond_b

    const/16 v23, 0x1

    :goto_5
    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6156
    const/16 v23, 0x8

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6157
    const/16 v26, 0x9

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-eqz v23, :cond_c

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move/from16 v23, v0

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6158
    const/16 v23, 0xa

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6159
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 6161
    invoke-static {v12}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 6162
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6163
    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6164
    const/16 v23, 0x2

    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6165
    const/16 v23, 0x3

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6166
    const/16 v23, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v26

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6167
    const/16 v23, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 6168
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 6170
    :cond_8
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 6172
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v23, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V

    .line 6175
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v14    # "messageId":J
    :cond_9
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 6176
    .local v24, "topMessage":J
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 6177
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v23, 0x20

    shl-long v26, v26, v23

    or-long v24, v24, v26

    .line 6180
    :cond_a
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6181
    const/16 v23, 0x1

    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6182
    const/16 v23, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6183
    const/16 v23, 0x3

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6184
    const/16 v23, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6185
    const/16 v23, 0x5

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6186
    const/16 v23, 0x6

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6187
    const/16 v23, 0x7

    const-wide/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6188
    const/16 v23, 0x8

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6189
    const/16 v23, 0x9

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6190
    const/16 v23, 0xa

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6191
    const/16 v23, 0xb

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6192
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 6194
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 6195
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6196
    const/16 v23, 0x1

    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6197
    const/16 v26, 0x2

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move/from16 v23, v0

    if-eqz v23, :cond_d

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6198
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto/16 :goto_3

    .line 6155
    .end local v24    # "topMessage":J
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v14    # "messageId":J
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 6157
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 6197
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v14    # "messageId":J
    .restart local v24    # "topMessage":J
    :cond_d
    const/16 v23, 0x0

    goto :goto_7

    .line 6201
    .end local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v12    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v13    # "messageDate":I
    .end local v24    # "topMessage":J
    :cond_e
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6202
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6203
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6204
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6205
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6206
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6209
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v18    # "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v19    # "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v20    # "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v21    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v22    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    .line 6210
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    .line 6212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V
    .locals 70
    .param p2, "withTransaction"    # Z
    .param p3, "doNotUpdateDialogDate"    # Z
    .param p4, "downloadMask"    # I
    .param p5, "ifNoLastMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZIZ)V"
        }
    .end annotation

    .prologue
    .line 4360
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz p5, :cond_5

    .line 4361
    const/16 v62, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4362
    .local v26, "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v62, v62, v64

    if-nez v62, :cond_0

    .line 4363
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_3

    .line 4364
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4371
    :cond_0
    :goto_0
    const/16 v27, -0x1

    .line 4372
    .local v27, "lastMid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, "SELECT last_mid FROM dialogs WHERE did = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v26

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-virtual/range {v63 .. v65}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    const/16 v64, 0x0

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    invoke-virtual/range {v62 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4373
    .local v11, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v62

    if-eqz v62, :cond_1

    .line 4374
    const/16 v62, 0x0

    move/from16 v0, v62

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v27

    .line 4376
    :cond_1
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4377
    if-eqz v27, :cond_5

    .line 4773
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v27    # "lastMid":I
    :cond_2
    :goto_1
    return-void

    .line 4365
    .restart local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_4

    .line 4366
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    neg-int v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4770
    .end local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_0
    move-exception v19

    .line 4771
    .local v19, "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4368
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_4
    :try_start_1
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    neg-int v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_0

    .line 4381
    .end local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5
    if-eqz p2, :cond_6

    .line 4382
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 4384
    :cond_6
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 4385
    .local v39, "messagesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v37, Ljava/util/HashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashMap;-><init>()V

    .line 4386
    .local v37, "messagesCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v30, 0x0

    .line 4387
    .local v30, "mediaCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4389
    .local v5, "botKeyboards":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/16 v40, 0x0

    .line 4390
    .local v40, "messagesMediaIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/16 v36, 0x0

    .line 4391
    .local v36, "messageMediaIds":Ljava/lang/StringBuilder;
    const/16 v31, 0x0

    .line 4392
    .local v31, "mediaTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 4393
    .local v33, "messageIds":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 4394
    .local v15, "dialogsReadMax":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 4396
    .local v38, "messagesIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string/jumbo v63, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v52

    .line 4397
    .local v52, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/16 v53, 0x0

    .line 4398
    .local v53, "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string/jumbo v63, "REPLACE INTO randoms VALUES(?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v54

    .line 4399
    .local v54, "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string/jumbo v63, "REPLACE INTO download_queue VALUES(?, ?, ?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v55

    .line 4400
    .local v55, "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string/jumbo v63, "REPLACE INTO webpage_pending VALUES(?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v56

    .line 4402
    .local v56, "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v62

    move/from16 v0, v62

    if-ge v4, v0, :cond_15

    .line 4403
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4405
    .local v32, "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 4406
    .local v34, "messageId":J
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v62, v62, v64

    if-nez v62, :cond_7

    .line 4407
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_12

    .line 4408
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v32

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4415
    :cond_7
    :goto_3
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_8

    .line 4416
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const/16 v64, 0x20

    shl-long v62, v62, v64

    or-long v34, v34, v62

    .line 4419
    :cond_8
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_c

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-nez v62, :cond_c

    .line 4420
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 4421
    .local v10, "currentMaxId":Ljava/lang/Integer;
    if-nez v10, :cond_9

    .line 4422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, "SELECT inbox_max FROM dialogs WHERE did = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-virtual/range {v63 .. v65}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    const/16 v64, 0x0

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    invoke-virtual/range {v62 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4423
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v62

    if-eqz v62, :cond_14

    .line 4424
    const/16 v62, 0x0

    move/from16 v0, v62

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 4428
    :goto_4
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4429
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v15, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4431
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_9
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    if-ltz v62, :cond_a

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v62

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-ge v0, v1, :cond_c

    .line 4432
    :cond_a
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->length()I

    move-result v62

    if-lez v62, :cond_b

    .line 4433
    const-string/jumbo v62, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4435
    :cond_b
    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4436
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v38

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4439
    .end local v10    # "currentMaxId":Ljava/lang/Integer;
    :cond_c
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_f

    .line 4440
    if-nez v36, :cond_d

    .line 4441
    new-instance v36, Ljava/lang/StringBuilder;

    .end local v36    # "messageMediaIds":Ljava/lang/StringBuilder;
    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 4442
    .restart local v36    # "messageMediaIds":Ljava/lang/StringBuilder;
    new-instance v40, Ljava/util/HashMap;

    .end local v40    # "messagesMediaIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    .line 4443
    .restart local v40    # "messagesMediaIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v31, Ljava/util/HashMap;

    .end local v31    # "mediaTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 4445
    .restart local v31    # "mediaTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_d
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->length()I

    move-result v62

    if-lez v62, :cond_e

    .line 4446
    const-string/jumbo v62, ","

    move-object/from16 v0, v36

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4448
    :cond_e
    move-object/from16 v0, v36

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4449
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v40

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4450
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v31

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4452
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_11

    .line 4453
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4454
    .local v44, "oldMessage":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v44, :cond_10

    move-object/from16 v0, v44

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-ge v0, v1, :cond_11

    .line 4455
    :cond_10
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4402
    .end local v44    # "oldMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 4409
    :cond_12
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_13

    .line 4410
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    neg-int v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v32

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_3

    .line 4412
    :cond_13
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    neg-int v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v32

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_3

    .line 4426
    .restart local v10    # "currentMaxId":Ljava/lang/Integer;
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_14
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_4

    .line 4460
    .end local v10    # "currentMaxId":Ljava/lang/Integer;
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v32    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v34    # "messageId":J
    :cond_15
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v63

    :goto_5
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_16

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 4461
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Long;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Long;->longValue()J

    move-result-wide v64

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lorg/telegram/tgnet/TLRPC$Message;

    move-wide/from16 v0, v64

    move-object/from16 v2, v62

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_5

    .line 4464
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_16
    if-eqz v36, :cond_1a

    .line 4465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, "SELECT mid FROM media_v2 WHERE mid IN("

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string/jumbo v64, ")"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    const/16 v64, 0x0

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    invoke-virtual/range {v62 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4466
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_6
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v62

    if-eqz v62, :cond_17

    .line 4467
    const/16 v62, 0x0

    move/from16 v0, v62

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v42

    .line 4468
    .local v42, "mid":J
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v40

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 4470
    .end local v42    # "mid":J
    :cond_17
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4471
    new-instance v30, Ljava/util/HashMap;

    .end local v30    # "mediaCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 4472
    .restart local v30    # "mediaCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-virtual/range {v40 .. v40}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :goto_7
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_1a

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 4473
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v63

    move-object/from16 v0, v31

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/Integer;

    .line 4474
    .local v57, "type":Ljava/lang/Integer;
    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 4476
    .local v8, "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-nez v8, :cond_19

    .line 4477
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4478
    .restart local v8    # "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4479
    .local v7, "count":Ljava/lang/Integer;
    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4483
    :goto_8
    if-nez v7, :cond_18

    .line 4484
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4486
    :cond_18
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v63

    add-int/lit8 v63, v63, 0x1

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4487
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 4481
    .end local v7    # "count":Ljava/lang/Integer;
    :cond_19
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .restart local v7    # "count":Ljava/lang/Integer;
    goto :goto_8

    .line 4491
    .end local v7    # "count":Ljava/lang/Integer;
    .end local v8    # "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v57    # "type":Ljava/lang/Integer;
    :cond_1a
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->length()I

    move-result v62

    if-lez v62, :cond_1d

    .line 4492
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, "SELECT mid FROM messages WHERE mid IN("

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string/jumbo v64, ")"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    const/16 v64, 0x0

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    invoke-virtual/range {v62 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4493
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_9
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v62

    if-eqz v62, :cond_1b

    .line 4494
    const/16 v62, 0x0

    move/from16 v0, v62

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v62

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v38

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 4496
    :cond_1b
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4497
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :goto_a
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_1d

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 4498
    .local v14, "dialog_id":Ljava/lang/Long;
    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 4499
    .restart local v7    # "count":Ljava/lang/Integer;
    if-nez v7, :cond_1c

    .line 4500
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4502
    :cond_1c
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v63

    add-int/lit8 v63, v63, 0x1

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4503
    move-object/from16 v0, v37

    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 4507
    .end local v7    # "count":Ljava/lang/Integer;
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v14    # "dialog_id":Ljava/lang/Long;
    :cond_1d
    const/16 v17, 0x0

    .line 4508
    .local v17, "downloadMediaMask":I
    const/4 v4, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v62

    move/from16 v0, v62

    if-ge v4, v0, :cond_33

    .line 4509
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4510
    .restart local v32    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 4512
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4513
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 4514
    .restart local v34    # "messageId":J
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_1e

    .line 4515
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 4517
    :cond_1e
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_1f

    .line 4518
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const/16 v64, 0x20

    shl-long v62, v62, v64

    or-long v34, v34, v62

    .line 4521
    :cond_1f
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v62

    move/from16 v0, v62

    invoke-direct {v12, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 4522
    .local v12, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4524
    const/16 v61, 0x1

    .line 4525
    .local v61, "updateDialog":Z
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v62, v0

    if-eqz v62, :cond_20

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    move/from16 v62, v0

    if-eqz v62, :cond_20

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    move/from16 v62, v0

    if-nez v62, :cond_20

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    move/from16 v62, v0

    if-nez v62, :cond_20

    .line 4526
    const/16 v61, 0x0

    .line 4529
    :cond_20
    if-eqz v61, :cond_23

    .line 4530
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4531
    .restart local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v26, :cond_22

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v62, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-gt v0, v1, :cond_22

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    if-lez v62, :cond_21

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    if-lez v62, :cond_21

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-gt v0, v1, :cond_22

    :cond_21
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    if-gez v62, :cond_23

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    if-gez v62, :cond_23

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-ge v0, v1, :cond_23

    .line 4532
    :cond_22
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4536
    .end local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_23
    const/16 v62, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v62

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4537
    const/16 v62, 0x2

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4538
    const/16 v62, 0x3

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v63

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4539
    const/16 v62, 0x4

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move/from16 v63, v0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4540
    const/16 v62, 0x5

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v63, v0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4541
    const/16 v62, 0x6

    move-object/from16 v0, v52

    move/from16 v1, v62

    invoke-virtual {v0, v1, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4542
    const/16 v63, 0x7

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_2d

    const/16 v62, 0x1

    :goto_c
    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4543
    const/16 v62, 0x8

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    move/from16 v63, v0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4544
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move/from16 v62, v0

    move/from16 v0, v62

    and-int/lit16 v0, v0, 0x400

    move/from16 v62, v0

    if-eqz v62, :cond_2e

    .line 4545
    const/16 v62, 0x9

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move/from16 v63, v0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4549
    :goto_d
    const/16 v62, 0xa

    const/16 v63, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4550
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4552
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v62, v62, v64

    if-eqz v62, :cond_24

    .line 4553
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4554
    const/16 v62, 0x1

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v54

    move/from16 v1, v62

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4555
    const/16 v62, 0x2

    move-object/from16 v0, v54

    move/from16 v1, v62

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4556
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4559
    :cond_24
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_26

    .line 4560
    if-nez v53, :cond_25

    .line 4561
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string/jumbo v63, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v53

    .line 4563
    :cond_25
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4564
    const/16 v62, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v62

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4565
    const/16 v62, 0x2

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v53

    move/from16 v1, v62

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4566
    const/16 v62, 0x3

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v63, v0

    move-object/from16 v0, v53

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4567
    const/16 v62, 0x4

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v63

    move-object/from16 v0, v53

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4568
    const/16 v62, 0x5

    move-object/from16 v0, v53

    move/from16 v1, v62

    invoke-virtual {v0, v1, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4569
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4572
    :cond_26
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    move/from16 v62, v0

    if-eqz v62, :cond_27

    .line 4573
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4574
    const/16 v62, 0x1

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v56

    move/from16 v1, v62

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4575
    const/16 v62, 0x2

    move-object/from16 v0, v56

    move/from16 v1, v62

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4576
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4579
    :cond_27
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4581
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_28

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    move/from16 v62, v0

    if-eqz v62, :cond_2c

    :cond_28
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v62, v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v63

    move/from16 v0, v63

    add-int/lit16 v0, v0, -0xe10

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-lt v0, v1, :cond_2c

    if-eqz p4, :cond_2c

    .line 4582
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v62, v0

    if-nez v62, :cond_29

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v62, v0

    if-eqz v62, :cond_2c

    .line 4583
    :cond_29
    const/16 v57, 0x0

    .line 4584
    .local v57, "type":I
    const-wide/16 v22, 0x0

    .line 4585
    .local v22, "id":J
    const/16 v41, 0x0

    .line 4586
    .local v41, "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_2f

    .line 4587
    and-int/lit8 v62, p4, 0x2

    if-eqz v62, :cond_2a

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    move/from16 v62, v0

    const/high16 v63, 0x200000

    move/from16 v0, v62

    move/from16 v1, v63

    if-ge v0, v1, :cond_2a

    .line 4588
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v22, v0

    .line 4589
    const/16 v57, 0x2

    .line 4590
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 4591
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4592
    move-object/from16 v0, v41

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    move/from16 v62, v0

    or-int/lit8 v62, v62, 0x1

    move/from16 v0, v62

    move-object/from16 v1, v41

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 4630
    :cond_2a
    :goto_e
    if-eqz v41, :cond_2c

    .line 4631
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    move/from16 v62, v0

    if-eqz v62, :cond_2b

    .line 4632
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    move/from16 v62, v0

    move/from16 v0, v62

    move-object/from16 v1, v41

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    .line 4633
    move-object/from16 v0, v41

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    move/from16 v62, v0

    or-int/lit8 v62, v62, 0x4

    move/from16 v0, v62

    move-object/from16 v1, v41

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 4635
    :cond_2b
    or-int v17, v17, v57

    .line 4636
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4637
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    .end local v12    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getObjectSize()I

    move-result v62

    move/from16 v0, v62

    invoke-direct {v12, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 4638
    .restart local v12    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4639
    const/16 v62, 0x1

    move-object/from16 v0, v55

    move/from16 v1, v62

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4640
    const/16 v62, 0x2

    move-object/from16 v0, v55

    move/from16 v1, v62

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4641
    const/16 v62, 0x3

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v63, v0

    move-object/from16 v0, v55

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4642
    const/16 v62, 0x4

    move-object/from16 v0, v55

    move/from16 v1, v62

    invoke-virtual {v0, v1, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4643
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4644
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4508
    .end local v22    # "id":J
    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .end local v57    # "type":I
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 4542
    :cond_2d
    const/16 v62, 0x0

    goto/16 :goto_c

    .line 4547
    :cond_2e
    const/16 v62, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v63

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto/16 :goto_d

    .line 4594
    .restart local v22    # "id":J
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .restart local v57    # "type":I
    :cond_2f
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_30

    .line 4595
    and-int/lit8 v62, p4, 0x40

    if-eqz v62, :cond_2a

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    move/from16 v62, v0

    const/high16 v63, 0x500000

    move/from16 v0, v62

    move/from16 v1, v63

    if-ge v0, v1, :cond_2a

    .line 4596
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v22, v0

    .line 4597
    const/16 v57, 0x40

    .line 4598
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 4599
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4600
    move-object/from16 v0, v41

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    move/from16 v62, v0

    or-int/lit8 v62, v62, 0x1

    move/from16 v0, v62

    move-object/from16 v1, v41

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    goto/16 :goto_e

    .line 4602
    :cond_30
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v62, v0

    if-eqz v62, :cond_31

    .line 4603
    and-int/lit8 v62, p4, 0x1

    if-eqz v62, :cond_2a

    .line 4604
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v62, v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v63

    invoke-static/range {v62 .. v63}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v49

    .line 4605
    .local v49, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v49, :cond_2a

    .line 4606
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    move-wide/from16 v22, v0

    .line 4607
    const/16 v57, 0x1

    .line 4608
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    .line 4609
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 4610
    move-object/from16 v0, v41

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    move/from16 v62, v0

    or-int/lit8 v62, v62, 0x1

    move/from16 v0, v62

    move-object/from16 v1, v41

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    goto/16 :goto_e

    .line 4613
    .end local v49    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_31
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_32

    .line 4614
    and-int/lit8 v62, p4, 0x4

    if-eqz v62, :cond_2a

    .line 4615
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v22, v0

    .line 4616
    const/16 v57, 0x4

    .line 4617
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 4618
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4619
    move-object/from16 v0, v41

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    move/from16 v62, v0

    or-int/lit8 v62, v62, 0x1

    move/from16 v0, v62

    move-object/from16 v1, v41

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    goto/16 :goto_e

    .line 4621
    :cond_32
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v62, v0

    if-eqz v62, :cond_2a

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-nez v62, :cond_2a

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v62

    if-nez v62, :cond_2a

    .line 4622
    and-int/lit8 v62, p4, 0x8

    if-eqz v62, :cond_2a

    .line 4623
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v22, v0

    .line 4624
    const/16 v57, 0x8

    .line 4625
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 4626
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4627
    move-object/from16 v0, v41

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    move/from16 v62, v0

    or-int/lit8 v62, v62, 0x1

    move/from16 v0, v62

    move-object/from16 v1, v41

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    goto/16 :goto_e

    .line 4649
    .end local v12    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v22    # "id":J
    .end local v32    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v34    # "messageId":J
    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .end local v57    # "type":I
    .end local v61    # "updateDialog":Z
    :cond_33
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4650
    if-eqz v53, :cond_34

    .line 4651
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4653
    :cond_34
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4654
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4655
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4657
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string/jumbo v63, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v52

    .line 4658
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 4659
    .local v16, "dids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4661
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :cond_35
    :goto_f
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_40

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/Map$Entry;

    .line 4662
    .local v48, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-interface/range {v48 .. v48}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    .line 4663
    .local v25, "key":Ljava/lang/Long;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v64

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-eqz v63, :cond_35

    .line 4666
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4668
    .restart local v32    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v6, 0x0

    .line 4669
    .local v6, "channelId":I
    if-eqz v32, :cond_36

    .line 4670
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 4673
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "SELECT date, unread_count, pts, last_mid, inbox_max, outbox_max, pinned FROM dialogs WHERE did = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    invoke-virtual/range {v63 .. v65}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4674
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v13, 0x0

    .line 4675
    .local v13, "dialog_date":I
    const/16 v28, 0x0

    .line 4676
    .local v28, "last_mid":I
    const/16 v45, 0x0

    .line 4677
    .local v45, "old_unread_count":I
    if-eqz v6, :cond_3b

    const/16 v51, 0x1

    .line 4678
    .local v51, "pts":I
    :goto_10
    const/16 v24, 0x0

    .line 4679
    .local v24, "inbox_max":I
    const/16 v46, 0x0

    .line 4680
    .local v46, "outbox_max":I
    const/16 v50, 0x0

    .line 4681
    .local v50, "pinned":I
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v63

    if-eqz v63, :cond_3c

    .line 4682
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 4683
    const/16 v63, 0x1

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v45

    .line 4684
    const/16 v63, 0x2

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v51

    .line 4685
    const/16 v63, 0x3

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v28

    .line 4686
    const/16 v63, 0x4

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v24

    .line 4687
    const/16 v63, 0x5

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v46

    .line 4688
    const/16 v63, 0x6

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v50

    .line 4692
    :cond_37
    :goto_11
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4694
    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Integer;

    .line 4695
    .local v60, "unread_count":Ljava/lang/Integer;
    if-nez v60, :cond_3d

    .line 4696
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    .line 4700
    :goto_12
    if-eqz v32, :cond_3e

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 4701
    .restart local v34    # "messageId":J
    :goto_13
    if-eqz v32, :cond_38

    .line 4702
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_38

    .line 4703
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 4707
    :cond_38
    if-eqz v6, :cond_39

    .line 4708
    int-to-long v0, v6

    move-wide/from16 v64, v0

    const/16 v63, 0x20

    shl-long v64, v64, v63

    or-long v34, v34, v64

    .line 4711
    :cond_39
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4712
    const/16 v63, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v64

    move-object/from16 v0, v52

    move/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4713
    if-eqz v32, :cond_3f

    if-eqz p3, :cond_3a

    if-nez v13, :cond_3f

    .line 4714
    :cond_3a
    const/16 v63, 0x2

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v64, v0

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4718
    :goto_14
    const/16 v63, 0x3

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v64

    add-int v64, v64, v45

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4719
    const/16 v63, 0x4

    move-object/from16 v0, v52

    move/from16 v1, v63

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4720
    const/16 v63, 0x5

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4721
    const/16 v63, 0x6

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4722
    const/16 v63, 0x7

    const-wide/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4723
    const/16 v63, 0x8

    const/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4724
    const/16 v63, 0x9

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4725
    const/16 v63, 0xa

    const/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4726
    const/16 v63, 0xb

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4727
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto/16 :goto_f

    .line 4677
    .end local v24    # "inbox_max":I
    .end local v34    # "messageId":J
    .end local v46    # "outbox_max":I
    .end local v50    # "pinned":I
    .end local v51    # "pts":I
    .end local v60    # "unread_count":Ljava/lang/Integer;
    :cond_3b
    const/16 v51, 0x0

    goto/16 :goto_10

    .line 4689
    .restart local v24    # "inbox_max":I
    .restart local v46    # "outbox_max":I
    .restart local v50    # "pinned":I
    .restart local v51    # "pts":I
    :cond_3c
    if-eqz v6, :cond_37

    .line 4690
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->checkChannelInviter(I)V

    goto/16 :goto_11

    .line 4698
    .restart local v60    # "unread_count":Ljava/lang/Integer;
    :cond_3d
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v63

    add-int v63, v63, v45

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 4700
    :cond_3e
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v34, v0

    goto/16 :goto_13

    .line 4716
    .restart local v34    # "messageId":J
    :cond_3f
    const/16 v63, 0x2

    move-object/from16 v0, v52

    move/from16 v1, v63

    invoke-virtual {v0, v1, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto/16 :goto_14

    .line 4729
    .end local v6    # "channelId":I
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v13    # "dialog_date":I
    .end local v24    # "inbox_max":I
    .end local v25    # "key":Ljava/lang/Long;
    .end local v28    # "last_mid":I
    .end local v32    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v34    # "messageId":J
    .end local v45    # "old_unread_count":I
    .end local v46    # "outbox_max":I
    .end local v48    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v50    # "pinned":I
    .end local v51    # "pts":I
    .end local v60    # "unread_count":Ljava/lang/Integer;
    :cond_40
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4731
    if-eqz v30, :cond_45

    .line 4732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string/jumbo v63, "REPLACE INTO media_counts_v2 VALUES(?, ?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v54

    .line 4733
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v63

    :cond_41
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_44

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 4734
    .local v9, "counts":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/Integer;

    .line 4735
    .local v57, "type":Ljava/lang/Integer;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/util/HashMap;

    invoke-virtual/range {v62 .. v62}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v64

    :cond_42
    :goto_15
    invoke-interface/range {v64 .. v64}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_41

    invoke-interface/range {v64 .. v64}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/Map$Entry;

    .line 4736
    .local v47, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Long;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Long;->longValue()J

    move-result-wide v58

    .line 4737
    .local v58, "uid":J
    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v29, v0

    .line 4738
    .local v29, "lower_part":I
    const/4 v7, -0x1

    .line 4739
    .local v7, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    sget-object v65, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v66, "SELECT count FROM media_counts_v2 WHERE uid = %d AND type = %d LIMIT 1"

    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    aput-object v69, v67, v68

    const/16 v68, 0x1

    aput-object v57, v67, v68

    invoke-static/range {v65 .. v67}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v65

    const/16 v66, 0x0

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4740
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v62

    if-eqz v62, :cond_43

    .line 4741
    const/16 v62, 0x0

    move/from16 v0, v62

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 4743
    :cond_43
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4744
    const/16 v62, -0x1

    move/from16 v0, v62

    if-eq v7, v0, :cond_42

    .line 4745
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4746
    invoke-interface/range {v47 .. v47}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Integer;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->intValue()I

    move-result v62

    add-int v7, v7, v62

    .line 4747
    const/16 v62, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v62

    move-wide/from16 v2, v58

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4748
    const/16 v62, 0x2

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v65

    move-object/from16 v0, v54

    move/from16 v1, v62

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4749
    const/16 v62, 0x3

    move-object/from16 v0, v54

    move/from16 v1, v62

    invoke-virtual {v0, v1, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4750
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto/16 :goto_15

    .line 4754
    .end local v7    # "count":I
    .end local v9    # "counts":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v29    # "lower_part":I
    .end local v47    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v57    # "type":Ljava/lang/Integer;
    .end local v58    # "uid":J
    :cond_44
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4756
    :cond_45
    if-eqz p2, :cond_46

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 4759
    :cond_46
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    .line 4761
    if-eqz v17, :cond_2

    .line 4762
    move/from16 v18, v17

    .line 4763
    .local v18, "downloadMediaMaskFinal":I
    new-instance v62, Lorg/telegram/messenger/MessagesStorage$70;

    move-object/from16 v0, v62

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage$70;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p3, "withTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4041
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p3, :cond_0

    .line 4042
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 4044
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    .line 4045
    invoke-direct {p0, p2}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    .line 4046
    if-eqz p3, :cond_1

    .line 4047
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4052
    :cond_1
    :goto_0
    return-void

    .line 4049
    :catch_0
    move-exception v0

    .line 4050
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private putUsersInternal(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3830
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3890
    :cond_0
    :goto_0
    return-void

    .line 3833
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v8, "REPLACE INTO users VALUES(?, ?, ?, ?)"

    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    .line 3834
    .local v5, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    .line 3835
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 3836
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v7, :cond_3

    .line 3837
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "SELECT data FROM users WHERE uid = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 3838
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3840
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v1, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 3841
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_2

    .line 3842
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 3843
    .local v4, "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3844
    if-eqz v4, :cond_2

    .line 3845
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 3846
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 3847
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 3852
    :goto_2
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v7, :cond_6

    .line 3853
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 3854
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3859
    :goto_3
    move-object v6, v4

    .line 3866
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_4
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3868
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_3
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3869
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$User;->getObjectSize()I

    move-result v7

    invoke-direct {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3870
    .restart local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v6, v2}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3871
    const/4 v7, 0x1

    iget v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3872
    const/4 v7, 0x2

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesStorage;->formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 3873
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_9

    .line 3874
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v7, :cond_7

    .line 3875
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x64

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 3881
    :cond_4
    :goto_5
    const/4 v7, 0x3

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3885
    :goto_6
    const/4 v7, 0x4

    invoke-virtual {v5, v7, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3886
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3887
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3834
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3849
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 3850
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v7, v7, -0x9

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3862
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :catch_0
    move-exception v3

    .line 3863
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3856
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    const/4 v7, 0x0

    :try_start_2
    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 3857
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 3876
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v7, :cond_8

    .line 3877
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x65

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_5

    .line 3878
    :cond_8
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v7, :cond_4

    .line 3879
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x66

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_5

    .line 3883
    :cond_9
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto :goto_6

    .line 3889
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_0
.end method

.method private updateDbToLastVersion(I)V
    .locals 2
    .param p1, "currentVersion"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$1;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method private updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 28
    .param p3, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5307
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "additionalDialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getId()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/DispatchQueue;->getId()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-eqz v23, :cond_0

    .line 5308
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "wrong db thread"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 5312
    :cond_0
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5313
    .local v11, "dialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_6

    .line 5315
    if-eqz p3, :cond_1

    .line 5316
    move/from16 v0, p3

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string/jumbo v24, "UPDATE dialogs SET last_mid = (SELECT mid FROM messages WHERE uid = ? AND date = (SELECT MAX(date) FROM messages WHERE uid = ?)) WHERE did = ?"

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    .line 5327
    .local v21, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 5328
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_4

    .line 5329
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 5330
    .local v12, "did":J
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5331
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5332
    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5333
    const/16 v23, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5334
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5328
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5319
    .end local v4    # "a":I
    .end local v12    # "did":J
    .end local v21    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    .line 5320
    .local v18, "ids":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v25, "SELECT did FROM dialogs WHERE last_mid IN(%s)"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v18, v26, v27

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 5321
    .local v6, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_2
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 5322
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 5430
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "dialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v18    # "ids":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 5431
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5433
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void

    .line 5324
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v11    # "dialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v18    # "ids":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string/jumbo v24, "UPDATE dialogs SET last_mid = (SELECT mid FROM messages WHERE uid = ? AND date = (SELECT MAX(date) FROM messages WHERE uid = ? AND date != 0)) WHERE did = ?"

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    .restart local v21    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    goto/16 :goto_0

    .line 5336
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v18    # "ids":Ljava/lang/String;
    .restart local v4    # "a":I
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 5341
    .end local v4    # "a":I
    .end local v21    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_4
    if-eqz p2, :cond_7

    .line 5342
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_7

    .line 5343
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 5344
    .local v12, "did":Ljava/lang/Long;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 5345
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5342
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 5339
    .end local v4    # "a":I
    .end local v12    # "did":Ljava/lang/Long;
    :cond_6
    move/from16 v0, p3

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5349
    :cond_7
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    .line 5351
    .restart local v18    # "ids":Ljava/lang/String;
    new-instance v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;-><init>()V

    .line 5352
    .local v10, "dialogs":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5353
    .local v15, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 5354
    .local v22, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5355
    .local v5, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 5356
    .local v16, "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v25, "SELECT d.did, d.last_mid, d.unread_count, d.date, m.data, m.read_state, m.mid, m.send_state, m.date, d.pts, d.inbox_max, d.outbox_max, d.pinned FROM dialogs as d LEFT JOIN messages as m ON d.last_mid = m.mid WHERE d.did IN(%s)"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v18, v26, v27

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 5357
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_8
    :goto_6
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 5358
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 5359
    .local v9, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 5360
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 5361
    const/16 v23, 0xa

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 5362
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 5363
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 5364
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 5365
    const/16 v23, 0x9

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 5366
    if-nez p3, :cond_b

    const/16 v23, 0x0

    :goto_7
    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 5367
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 5368
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move/from16 v23, v0

    if-eqz v23, :cond_c

    const/16 v23, 0x1

    :goto_8
    move/from16 v0, v23

    iput-boolean v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 5370
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5372
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v7

    .line 5373
    .local v7, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v7, :cond_a

    .line 5374
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v7, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v20

    .line 5375
    .local v20, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5376
    const/16 v23, 0x5

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 5377
    const/16 v23, 0x6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5378
    const/16 v23, 0x7

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 5379
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 5380
    .local v8, "date":I
    if-eqz v8, :cond_9

    .line 5381
    iput v8, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 5383
    :cond_9
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5384
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5386
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5389
    .end local v8    # "date":I
    .end local v20    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_a
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v19, v0

    .line 5390
    .local v19, "lower_id":I
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    const/16 v23, 0x20

    shr-long v24, v24, v23

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v17, v0

    .line 5391
    .local v17, "high_id":I
    if-eqz v19, :cond_f

    .line 5392
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 5393
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 5394
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 5366
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v17    # "high_id":I
    .end local v19    # "lower_id":I
    :cond_b
    const/16 v23, 0x1

    goto/16 :goto_7

    .line 5368
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 5397
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v17    # "high_id":I
    .restart local v19    # "lower_id":I
    :cond_d
    if-lez v19, :cond_e

    .line 5398
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 5399
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 5402
    :cond_e
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 5403
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 5408
    :cond_f
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 5409
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 5413
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v17    # "high_id":I
    .end local v19    # "lower_id":I
    :cond_10
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5415
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_11

    .line 5416
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v15, v2}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5419
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_12

    .line 5420
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5423
    :cond_12
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_13

    .line 5424
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5427
    :cond_13
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_14

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2

    .line 5428
    :cond_14
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v15}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1864
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p3, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1866
    .local v8, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_5

    .line 1867
    const-string/jumbo v20, ","

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    .line 1868
    .local v11, "ids":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v22, "SELECT uid, read_state, out FROM messages WHERE mid IN(%s)"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v11, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 1869
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1870
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 1871
    .local v13, "out":I
    if-nez v13, :cond_0

    .line 1874
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 1875
    .local v16, "read_state":I
    if-nez v16, :cond_0

    .line 1878
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 1879
    .local v18, "uid":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1880
    .local v6, "currentCount":Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 1881
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1939
    .end local v6    # "currentCount":Ljava/lang/Integer;
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v8    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v11    # "ids":Ljava/lang/String;
    .end local v13    # "out":I
    .end local v16    # "read_state":I
    .end local v18    # "uid":J
    :catch_0
    move-exception v9

    .line 1940
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1942
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 1883
    .restart local v6    # "currentCount":Ljava/lang/Integer;
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v8    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v11    # "ids":Ljava/lang/String;
    .restart local v13    # "out":I
    .restart local v16    # "read_state":I
    .restart local v18    # "uid":J
    :cond_2
    :try_start_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1886
    .end local v6    # "currentCount":Ljava/lang/Integer;
    .end local v13    # "out":I
    .end local v16    # "read_state":I
    .end local v18    # "uid":J
    :cond_3
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1923
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "ids":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_9

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    const-string/jumbo v21, "UPDATE dialogs SET unread_count = ? WHERE did = ?"

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 1926
    .local v17, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1927
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1928
    const/16 v22, 0x1

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1929
    const/16 v22, 0x2

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1930
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_2

    .line 1888
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_5
    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v20

    if-eqz v20, :cond_7

    .line 1889
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_7

    .line 1890
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1891
    .local v12, "key":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1892
    .local v14, "messageId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v22, "SELECT COUNT(mid) FROM messages WHERE uid = %d AND mid > %d AND read_state IN(0,2) AND out = 0"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 1893
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1894
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 1895
    .local v5, "count":I
    int-to-long v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    .end local v5    # "count":I
    :cond_6
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    const-string/jumbo v21, "UPDATE dialogs SET inbox_max = max((SELECT inbox_max FROM dialogs WHERE did = ?), ?) WHERE did = ?"

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 1900
    .restart local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1901
    const/16 v20, 0x1

    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1902
    const/16 v20, 0x2

    long-to-int v0, v14

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1903
    const/16 v20, 0x3

    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1904
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1905
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1889
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1908
    .end local v4    # "b":I
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v12    # "key":I
    .end local v14    # "messageId":J
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_7
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v20

    if-eqz v20, :cond_4

    .line 1909
    const/4 v4, 0x0

    .restart local v4    # "b":I
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_4

    .line 1910
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1911
    .restart local v12    # "key":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1912
    .restart local v14    # "messageId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    const-string/jumbo v21, "UPDATE dialogs SET outbox_max = max((SELECT outbox_max FROM dialogs WHERE did = ?), ?) WHERE did = ?"

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 1913
    .restart local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1914
    const/16 v20, 0x1

    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1915
    const/16 v20, 0x2

    long-to-int v0, v14

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1916
    const/16 v20, 0x3

    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1917
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1918
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1909
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1932
    .end local v4    # "b":I
    .end local v12    # "key":I
    .end local v14    # "messageId":J
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 1936
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_9
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    .line 1937
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdateRead(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J
    .locals 19
    .param p1, "random_id"    # J
    .param p3, "_oldId"    # Ljava/lang/Integer;
    .param p4, "newId"    # I
    .param p5, "date"    # I
    .param p6, "channelId"    # I

    .prologue
    .line 4886
    const/4 v2, 0x0

    .line 4888
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    move/from16 v0, p4

    int-to-long v8, v0

    .line 4890
    .local v8, "newMessageId":J
    if-nez p3, :cond_3

    .line 4892
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT mid FROM randoms WHERE random_id = %d LIMIT 1"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 4893
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 4894
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p3

    .line 4899
    :cond_0
    if-eqz v2, :cond_1

    .line 4900
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4903
    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 4904
    const/4 v12, 0x0

    .line 4998
    :goto_1
    return-object v12

    .line 4896
    :catch_0
    move-exception v3

    .line 4897
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4899
    if-eqz v2, :cond_1

    .line 4900
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0

    .line 4899
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v2, :cond_2

    .line 4900
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_2
    throw v12

    .line 4907
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v10, v12

    .line 4908
    .local v10, "oldMessageId":J
    if-eqz p6, :cond_4

    .line 4909
    move/from16 v0, p6

    int-to-long v12, v0

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    or-long/2addr v10, v12

    .line 4910
    move/from16 v0, p6

    int-to-long v12, v0

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    .line 4913
    :cond_4
    const-wide/16 v4, 0x0

    .line 4915
    .local v4, "did":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT uid FROM messages WHERE mid = %d LIMIT 1"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 4916
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 4917
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v4

    .line 4922
    :cond_5
    if-eqz v2, :cond_6

    .line 4923
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4927
    :cond_6
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_8

    .line 4928
    const/4 v12, 0x0

    goto :goto_1

    .line 4919
    :catch_1
    move-exception v3

    .line 4920
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4922
    if-eqz v2, :cond_6

    .line 4923
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_2

    .line 4922
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    if-eqz v2, :cond_7

    .line 4923
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_7
    throw v12

    .line 4930
    :cond_8
    cmp-long v12, v10, v8

    if-nez v12, :cond_b

    if-eqz p5, :cond_b

    .line 4931
    const/4 v7, 0x0

    .line 4933
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v13, "UPDATE messages SET send_state = 0, date = ? WHERE mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4934
    const/4 v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v7, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4935
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4936
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4940
    if-eqz v7, :cond_9

    .line 4941
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4945
    :cond_9
    :goto_3
    const/4 v12, 0x2

    new-array v12, v12, [J

    const/4 v13, 0x0

    aput-wide v4, v12, v13

    const/4 v13, 0x1

    move/from16 v0, p4

    int-to-long v14, v0

    aput-wide v14, v12, v13

    goto/16 :goto_1

    .line 4937
    :catch_2
    move-exception v3

    .line 4938
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4940
    if-eqz v7, :cond_9

    .line 4941
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_3

    .line 4940
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v12

    if-eqz v7, :cond_a

    .line 4941
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_a
    throw v12

    .line 4947
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_b
    const/4 v7, 0x0

    .line 4949
    .restart local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v13, "UPDATE messages SET mid = ?, send_state = 0 WHERE mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4950
    const/4 v12, 0x1

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4951
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4952
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4961
    if-eqz v7, :cond_c

    .line 4962
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4963
    const/4 v7, 0x0

    .line 4968
    :cond_c
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v13, "UPDATE media_v2 SET mid = ? WHERE mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4969
    const/4 v12, 0x1

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4970
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4971
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 4979
    if-eqz v7, :cond_d

    .line 4980
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4981
    const/4 v7, 0x0

    .line 4986
    :cond_d
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v13, "UPDATE dialogs SET last_mid = ? WHERE last_mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4987
    const/4 v12, 0x1

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4988
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4989
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 4993
    if-eqz v7, :cond_e

    .line 4994
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4998
    :cond_e
    :goto_6
    const/4 v12, 0x2

    new-array v12, v12, [J

    const/4 v13, 0x0

    aput-wide v4, v12, v13

    const/4 v13, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    aput-wide v14, v12, v13

    goto/16 :goto_1

    .line 4953
    :catch_3
    move-exception v3

    .line 4955
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "DELETE FROM messages WHERE mid = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4956
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "DELETE FROM messages_seq WHERE mid = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4961
    :goto_7
    if-eqz v7, :cond_c

    .line 4962
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4963
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 4957
    :catch_4
    move-exception v6

    .line 4958
    .local v6, "e2":Ljava/lang/Exception;
    :try_start_a
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    .line 4961
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catchall_3
    move-exception v12

    if-eqz v7, :cond_f

    .line 4962
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4963
    const/4 v7, 0x0

    :cond_f
    throw v12

    .line 4972
    :catch_5
    move-exception v3

    .line 4974
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "DELETE FROM media_v2 WHERE mid = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 4979
    :goto_8
    if-eqz v7, :cond_d

    .line 4980
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4981
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 4975
    :catch_6
    move-exception v6

    .line 4976
    .restart local v6    # "e2":Ljava/lang/Exception;
    :try_start_c
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_8

    .line 4979
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catchall_4
    move-exception v12

    if-eqz v7, :cond_10

    .line 4980
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4981
    const/4 v7, 0x0

    :cond_10
    throw v12

    .line 4990
    :catch_7
    move-exception v3

    .line 4991
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 4993
    if-eqz v7, :cond_e

    .line 4994
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_6

    .line 4993
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v12

    if-eqz v7, :cond_11

    .line 4994
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_11
    throw v12
.end method

.method private updateUsersInternal(Ljava/util/ArrayList;ZZ)V
    .locals 12
    .param p2, "onlyStatus"    # Z
    .param p3, "withTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 5017
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v7}, Lorg/telegram/messenger/DispatchQueue;->getId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 5018
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "wrong db thread"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5021
    :cond_0
    if-eqz p2, :cond_5

    .line 5022
    if-eqz p3, :cond_1

    .line 5023
    :try_start_0
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 5025
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v8, "UPDATE users SET status = ? WHERE uid = ?"

    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 5026
    .local v3, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 5027
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5028
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v8, :cond_3

    .line 5029
    const/4 v8, 0x1

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v3, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5033
    :goto_1
    const/4 v8, 0x2

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v3, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5034
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5079
    .end local v3    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_0
    move-exception v0

    .line 5080
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5082
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 5031
    .restart local v3    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v3, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto :goto_1

    .line 5036
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5037
    if-eqz p3, :cond_2

    .line 5038
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    goto :goto_2

    .line 5041
    .end local v3    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5042
    .local v1, "ids":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5043
    .local v6, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 5044
    .restart local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_6

    .line 5045
    const-string/jumbo v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5047
    :cond_6
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5048
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 5050
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5051
    .local v2, "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5052
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 5053
    .restart local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 5054
    .local v4, "updateUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_8

    .line 5055
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v8, :cond_a

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 5056
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 5057
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 5058
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 5060
    :cond_9
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_4

    .line 5061
    :cond_a
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v8, :cond_b

    .line 5062
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    goto :goto_4

    .line 5063
    :cond_b
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 5064
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    goto :goto_4

    .line 5069
    .end local v4    # "updateUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 5070
    if-eqz p3, :cond_d

    .line 5071
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 5073
    :cond_d
    invoke-direct {p0, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    .line 5074
    if-eqz p3, :cond_2

    .line 5075
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public addRecentLocalFile(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "localUrl"    # Ljava/lang/String;
    .param p3, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1125
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p3, :cond_2

    .line 1155
    :cond_1
    :goto_0
    return-void

    .line 1128
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$14;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$14;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "adds"    # Ljava/lang/String;
    .param p2, "deletes"    # Ljava/lang/String;

    .prologue
    .line 2536
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2554
    :goto_0
    return-void

    .line 2539
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$44;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$44;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public checkMessageId(JI)Z
    .locals 11
    .param p1, "dialog_id"    # J
    .param p3, "mid"    # I

    .prologue
    const/4 v9, 0x0

    .line 2788
    const/4 v0, 0x1

    new-array v5, v0, [Z

    .line 2789
    .local v5, "result":[Z
    new-instance v6, Ljava/util/concurrent/Semaphore;

    invoke-direct {v6, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2790
    .local v6, "semaphore":Ljava/util/concurrent/Semaphore;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$49;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$49;-><init>(Lorg/telegram/messenger/MessagesStorage;JI[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2810
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2814
    :goto_0
    aget-boolean v0, v5, v9

    return v0

    .line 2811
    :catch_0
    move-exception v7

    .line 2812
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cleanup(Z)V
    .locals 2
    .param p1, "isLogin"    # Z

    .prologue
    .line 562
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 563
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$2;-><init>(Lorg/telegram/messenger/MessagesStorage;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 578
    return-void
.end method

.method public clearDownloadQueue(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 4096
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$65;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$65;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4110
    return-void
.end method

.method public clearUserPhoto(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # J

    .prologue
    .line 1573
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$25;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$25;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1583
    return-void
.end method

.method public clearUserPhotos(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1560
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$24;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$24;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1570
    return-void
.end method

.method public clearWebRecent(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1158
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$15;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$15;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1168
    return-void
.end method

.method public closeHolesInMedia(JIII)V
    .locals 19
    .param p1, "did"    # J
    .param p3, "minId"    # I
    .param p4, "maxId"    # I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5555
    const/4 v9, 0x0

    .line 5557
    .local v9, "ok":Z
    if-gez p5, :cond_4

    .line 5558
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT type, start, end FROM media_holes_v2 WHERE uid = %d AND type >= 0 AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 5562
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_0
    const/4 v8, 0x0

    .line 5563
    .local v8, "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 5564
    if-nez v8, :cond_1

    .line 5565
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5567
    .restart local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 5568
    .local v7, "holeType":I
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    .line 5569
    .local v10, "start":I
    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 5570
    .local v5, "end":I
    if-ne v10, v5, :cond_2

    const/4 v12, 0x1

    if-eq v10, v12, :cond_0

    .line 5573
    :cond_2
    new-instance v12, Lorg/telegram/messenger/MessagesStorage$Hole;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7, v10, v5}, Lorg/telegram/messenger/MessagesStorage$Hole;-><init>(Lorg/telegram/messenger/MessagesStorage;III)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5616
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v5    # "end":I
    .end local v7    # "holeType":I
    .end local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    .end local v10    # "start":I
    :catch_0
    move-exception v4

    .line 5617
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5619
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 5560
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT type, start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    const/16 v15, 0xa

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_0

    .line 5575
    .restart local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_5
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5576
    if-eqz v8, :cond_3

    .line 5577
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_3

    .line 5578
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessagesStorage$Hole;

    .line 5579
    .local v6, "hole":Lorg/telegram/messenger/MessagesStorage$Hole;
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p4

    if-lt v0, v12, :cond_7

    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p3

    if-gt v0, v12, :cond_7

    .line 5580
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5577
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5581
    :cond_7
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p4

    if-lt v0, v12, :cond_8

    .line 5582
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, p3

    if-eq v12, v0, :cond_6

    .line 5584
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "UPDATE media_holes_v2 SET end = %d WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 5585
    :catch_1
    move-exception v4

    .line 5586
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5589
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p3

    if-gt v0, v12, :cond_9

    .line 5590
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v0, p4

    if-eq v12, v0, :cond_6

    .line 5592
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "UPDATE media_holes_v2 SET start = %d WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 5593
    :catch_2
    move-exception v4

    .line 5594
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 5598
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5599
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v13, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    .line 5600
    .local v11, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5601
    const/4 v12, 0x1

    move-wide/from16 v0, p1

    invoke-virtual {v11, v12, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5602
    const/4 v12, 0x2

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5603
    const/4 v12, 0x3

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5604
    const/4 v12, 0x4

    move/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5605
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5606
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5607
    const/4 v12, 0x1

    move-wide/from16 v0, p1

    invoke-virtual {v11, v12, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5608
    const/4 v12, 0x2

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5609
    const/4 v12, 0x3

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5610
    const/4 v12, 0x4

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5611
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5612
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3
.end method

.method public commitTransaction(Z)V
    .locals 3
    .param p1, "useQueue"    # Z

    .prologue
    .line 3405
    if-eqz p1, :cond_0

    .line 3406
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$52;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesStorage$52;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3423
    :goto_0
    return-void

    .line 3418
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3419
    :catch_0
    move-exception v0

    .line 3420
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J
    .locals 6
    .param p1, "data"    # Lorg/telegram/tgnet/NativeByteBuffer;

    .prologue
    .line 660
    if-nez p1, :cond_0

    .line 661
    const-wide/16 v0, 0x0

    .line 680
    :goto_0
    return-wide v0

    .line 663
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    .line 664
    .local v0, "id":J
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$5;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/telegram/messenger/MessagesStorage$5;-><init>(Lorg/telegram/messenger/MessagesStorage;JLorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public createTaskForMid(IIIIIZ)V
    .locals 9
    .param p1, "messageId"    # I
    .param p2, "channelId"    # I
    .param p3, "time"    # I
    .param p4, "readTime"    # I
    .param p5, "ttl"    # I
    .param p6, "inner"    # Z

    .prologue
    .line 1741
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$29;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p1

    move v6, p2

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$29;-><init>(Lorg/telegram/messenger/MessagesStorage;IIIIIZ)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1785
    return-void
.end method

.method public createTaskForSecretChat(IIIILjava/util/ArrayList;)V
    .locals 8
    .param p1, "chatId"    # I
    .param p2, "time"    # I
    .param p3, "readTime"    # I
    .param p4, "isOut"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1788
    .local p5, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$30;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$30;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;IIII)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1860
    return-void
.end method

.method public deleteBlockedUser(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1282
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$19;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1292
    return-void
.end method

.method public deleteContacts(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2519
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2533
    :cond_0
    :goto_0
    return-void

    .line 2522
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$43;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$43;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public deleteDialog(JI)V
    .locals 3
    .param p1, "did"    # J
    .param p3, "messagesOnly"    # I

    .prologue
    .line 1387
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$22;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$22;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1519
    return-void
.end method

.method public deleteUserChannelHistory(II)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1322
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$21;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$21;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1384
    return-void
.end method

.method public doneHolesInMedia(JII)V
    .locals 9
    .param p1, "did"    # J
    .param p3, "max_id"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5502
    const/4 v2, -0x1

    if-ne p4, v2, :cond_2

    .line 5503
    if-nez p3, :cond_0

    .line 5504
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM media_holes_v2 WHERE uid = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5508
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 5509
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 5510
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5511
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5512
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5513
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5514
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5515
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5506
    .end local v0    # "a":I
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM media_holes_v2 WHERE uid = %d AND start = 0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_0

    .line 5517
    .restart local v0    # "a":I
    .restart local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5533
    .end local v0    # "a":I
    :goto_2
    return-void

    .line 5519
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_2
    if-nez p3, :cond_3

    .line 5520
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5524
    :goto_3
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 5525
    .restart local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5526
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5527
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5528
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5529
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5530
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5531
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_2

    .line 5522
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = 0"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_3
.end method

.method public emptyMessagesMedia(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1616
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$27;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1702
    return-void
.end method

.method public getBlockedUsers()V
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$18;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$18;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1279
    return-void
.end method

.method public getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requestDelegate"    # Lorg/telegram/tgnet/RequestDelegate;

    .prologue
    .line 2072
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2108
    :cond_0
    :goto_0
    return-void

    .line 2075
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 2076
    .local v0, "currentDate":I
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$35;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$35;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getCachedPhoneBook()V
    .locals 2

    .prologue
    .line 2594
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$46;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$46;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2640
    return-void
.end method

.method public getChannelPtsSync(I)I
    .locals 6
    .param p1, "channelId"    # I

    .prologue
    const/4 v5, 0x0

    .line 6315
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6316
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    .line 6317
    .local v1, "pts":[Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$87;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/telegram/messenger/MessagesStorage$87;-><init>(Lorg/telegram/messenger/MessagesStorage;I[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6343
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6347
    :goto_0
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 6344
    :catch_0
    move-exception v0

    .line 6345
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getChat(I)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 6
    .param p1, "chat_id"    # I

    .prologue
    .line 6412
    const/4 v1, 0x0

    .line 6414
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6415
    .local v2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6416
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6417
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6422
    .end local v2    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 6419
    :catch_0
    move-exception v3

    .line 6420
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 6
    .param p1, "user_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 6369
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6370
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v0, v3, [Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6371
    .local v0, "chat":[Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$89;

    invoke-direct {v4, p0, v0, p1, v2}, Lorg/telegram/messenger/MessagesStorage$89;-><init>(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$Chat;ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6379
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6383
    :goto_0
    aget-object v3, v0, v5

    return-object v3

    .line 6380
    :catch_0
    move-exception v1

    .line 6381
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "chatsToLoad"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v8, 0x0

    .line 3973
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 3992
    :cond_0
    :goto_0
    return-void

    .line 3976
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT data FROM chats WHERE uid IN(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 3977
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3979
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 3980
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_2

    .line 3981
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 3982
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3983
    if-eqz v0, :cond_2

    .line 3984
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3987
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v3

    .line 3988
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3991
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0
.end method

.method public getContacts()V
    .locals 2

    .prologue
    .line 2643
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$47;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$47;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2675
    return-void
.end method

.method public getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    return-object v0
.end method

.method public getDialogPhotos(IIIJI)V
    .locals 10
    .param p1, "did"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "max_id"    # J
    .param p6, "classGuid"    # I

    .prologue
    .line 1522
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$23;

    move-object v1, p0

    move-wide v2, p4

    move v4, p1

    move v5, p3

    move v6, p2

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$23;-><init>(Lorg/telegram/messenger/MessagesStorage;JIIII)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1557
    return-void
.end method

.method public getDialogReadMax(ZJ)I
    .locals 10
    .param p1, "outbox"    # Z
    .param p2, "dialog_id"    # J

    .prologue
    const/4 v9, 0x0

    .line 6281
    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6282
    .local v7, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    .line 6283
    .local v6, "max":[Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v8

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$86;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage$86;-><init>(Lorg/telegram/messenger/MessagesStorage;ZJ[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6307
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6311
    :goto_0
    aget-object v1, v6, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 6308
    :catch_0
    move-exception v0

    .line 6309
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDialogs(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 5918
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$82;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$82;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6073
    return-void
.end method

.method public getDownloadQueue(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 4113
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$66;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$66;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4149
    return-void
.end method

.method public getEncryptedChat(I)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 6
    .param p1, "chat_id"    # I

    .prologue
    .line 6426
    const/4 v1, 0x0

    .line 6428
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6429
    .local v3, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6430
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6431
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6436
    .end local v3    # "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 6433
    :catch_0
    move-exception v2

    .line 6434
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getEncryptedChat(ILjava/util/concurrent/Semaphore;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "chat_id"    # I
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Semaphore;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3704
    .local p3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3729
    :cond_0
    :goto_0
    return-void

    .line 3707
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$61;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/MessagesStorage$61;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "chatsToLoad"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    .local p3, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3995
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-nez p2, :cond_1

    .line 4037
    :cond_0
    :goto_0
    return-void

    .line 3998
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "SELECT data, user, g, authkey, ttl, layer, seq_in, seq_out, use_count, exchange_id, key_date, fprint, fauthkey, khash, in_seq_no, admin_id FROM enc_chats WHERE uid IN(%s)"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 3999
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4001
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    .line 4002
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v3, :cond_2

    .line 4003
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 4004
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4005
    if-eqz v1, :cond_2

    .line 4006
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 4007
    if-eqz p3, :cond_3

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4008
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4010
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 4011
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 4012
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 4013
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 4014
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 4015
    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 4016
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 4017
    .local v5, "use_count":I
    shr-int/lit8 v6, v5, 0x10

    int-to-short v6, v6

    iput-short v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 4018
    int-to-short v6, v5

    iput-short v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 4019
    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 4020
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 4021
    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 4022
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 4023
    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 4024
    const/16 v6, 0xe

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    .line 4025
    const/16 v6, 0xf

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    .line 4026
    .local v0, "admin_id":I
    if-eqz v0, :cond_4

    .line 4027
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    .line 4029
    :cond_4
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 4032
    .end local v0    # "admin_id":I
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v5    # "use_count":I
    :catch_0
    move-exception v4

    .line 4033
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4036
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto/16 :goto_0
.end method

.method public getMessages(JIIIIIIZI)V
    .locals 13
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "offset_date"    # I
    .param p6, "minDate"    # I
    .param p7, "classGuid"    # I
    .param p8, "load_type"    # I
    .param p9, "isChannel"    # Z
    .param p10, "loadIndex"    # I

    .prologue
    .line 2818
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$50;

    move-object v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p9

    move-wide v6, p1

    move/from16 v8, p8

    move/from16 v9, p6

    move/from16 v10, p5

    move/from16 v11, p7

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/MessagesStorage$50;-><init>(Lorg/telegram/messenger/MessagesStorage;IIZJIIIII)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3381
    return-void
.end method

.method public getNewTask(Ljava/util/ArrayList;I)V
    .locals 2
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1705
    .local p1, "oldTask":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$28;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$28;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1738
    return-void
.end method

.method public getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 3426
    if-eqz p1, :cond_0

    const-string/jumbo v0, "attheme"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 3464
    :goto_0
    return-object v0

    .line 3429
    :cond_1
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 3430
    .local v5, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3431
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$53;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$53;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3460
    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3464
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    .line 3461
    :catch_0
    move-exception v6

    .line 3462
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v0, v7

    .line 3464
    goto :goto_0
.end method

.method public getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method public getUnsentMessages(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 2678
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$48;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$48;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2785
    return-void
.end method

.method public getUser(I)Lorg/telegram/tgnet/TLRPC$User;
    .locals 6
    .param p1, "user_id"    # I

    .prologue
    .line 6387
    const/4 v2, 0x0

    .line 6389
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6390
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6391
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6392
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6397
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 6394
    :catch_0
    move-exception v1

    .line 6395
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;
    .locals 6
    .param p1, "user_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 6351
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6352
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v2, v3, [Lorg/telegram/tgnet/TLRPC$User;

    .line 6353
    .local v2, "user":[Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$88;

    invoke-direct {v4, p0, v2, p1, v1}, Lorg/telegram/messenger/MessagesStorage$88;-><init>(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$User;ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6361
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6365
    :goto_0
    aget-object v3, v2, v5

    return-object v3

    .line 6362
    :catch_0
    move-exception v0

    .line 6363
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6401
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6403
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :try_start_0
    const-string/jumbo v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6408
    :goto_0
    return-object v1

    .line 6404
    :catch_0
    move-exception v0

    .line 6405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6406
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "usersToLoad"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3948
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 3970
    :cond_0
    :goto_0
    return-void

    .line 3951
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT data, status FROM users WHERE uid IN(%s)"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 3952
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3954
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 3955
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_2

    .line 3956
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 3957
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3958
    if-eqz v3, :cond_2

    .line 3959
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_3

    .line 3960
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 3962
    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3965
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_0
    move-exception v2

    .line 3966
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3969
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0
.end method

.method public getWallpapers()V
    .locals 2

    .prologue
    .line 1222
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$17;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$17;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1248
    return-void
.end method

.method public hasAuthMessage(I)Z
    .locals 6
    .param p1, "date"    # I

    .prologue
    const/4 v5, 0x0

    .line 3679
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 3680
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Z

    .line 3681
    .local v1, "result":[Z
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$60;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/telegram/messenger/MessagesStorage$60;-><init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3696
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3700
    :goto_0
    aget-boolean v3, v1, v5

    return v3

    .line 3697
    :catch_0
    move-exception v0

    .line 3698
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDialogHasMessages(J)Z
    .locals 9
    .param p1, "did"    # J

    .prologue
    const/4 v8, 0x0

    .line 3654
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 3655
    .local v5, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v0, 0x1

    new-array v4, v0, [Z

    .line 3656
    .local v4, "result":[Z
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$59;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$59;-><init>(Lorg/telegram/messenger/MessagesStorage;J[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3671
    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3675
    :goto_0
    aget-boolean v0, v4, v8

    return v0

    .line 3672
    :catch_0
    move-exception v6

    .line 3673
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isMigratedChat(I)Z
    .locals 6
    .param p1, "chat_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 2305
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2306
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Z

    .line 2307
    .local v1, "result":[Z
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$39;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/telegram/messenger/MessagesStorage$39;-><init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2336
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    :goto_0
    aget-boolean v3, v1, v5

    return v3

    .line 2337
    :catch_0
    move-exception v0

    .line 2338
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V
    .locals 7
    .param p1, "chat_id"    # I
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p3, "force"    # Z
    .param p4, "byChannelUsers"    # Z

    .prologue
    .line 2344
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$40;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$40;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/concurrent/Semaphore;ZZ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2437
    return-void
.end method

.method public loadUnreadMessages()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$11;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1053
    return-void
.end method

.method public loadWebRecent(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1084
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$13;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1122
    return-void
.end method

.method public markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 4796
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$72;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$72;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4810
    return-void
.end method

.method public markMessagesAsDeleted(Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;
    .locals 3
    .param p2, "useQueue"    # Z
    .param p3, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 5452
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5465
    :goto_0
    return-object v0

    .line 5455
    :cond_0
    if-eqz p2, :cond_1

    .line 5456
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$80;

    invoke-direct {v2, p0, p1, p3}, Lorg/telegram/messenger/MessagesStorage$80;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5463
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public markMessagesAsDeletedByRandoms(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5178
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5208
    :goto_0
    return-void

    .line 5181
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$78;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$78;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public markMessagesAsRead(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Z)V
    .locals 2
    .param p4, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 5165
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p2, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p3, "encryptedMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_0

    .line 5166
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$77;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$77;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5175
    :goto_0
    return-void

    .line 5173
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public markMessagesContentAsRead(Ljava/util/ArrayList;I)V
    .locals 2
    .param p2, "date"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5134
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5162
    :cond_0
    :goto_0
    return-void

    .line 5137
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$76;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$76;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public openDatabase(Z)V
    .locals 10
    .param p1, "first"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 88
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "cache4.db"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "createTable":Z
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 96
    :cond_0
    :try_start_0
    new-instance v5, Lorg/telegram/SQLite/SQLiteDatabase;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    .line 97
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "PRAGMA secure_delete = ON"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 98
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "PRAGMA temp_store = 1"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 99
    if-eqz v0, :cond_2

    .line 100
    const-string/jumbo v5, "create new database"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE messages_holes(uid INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, start));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 102
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes(uid, end);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 104
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE media_holes_v2(uid INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, type, start));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 105
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS uid_end_media_holes_v2 ON media_holes_v2(uid, type, end);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 107
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE messages(mid INTEGER PRIMARY KEY, uid INTEGER, read_state INTEGER, send_state INTEGER, date INTEGER, data BLOB, out INTEGER, ttl INTEGER, media INTEGER, replydata BLOB, imp INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 108
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS uid_mid_idx_messages ON messages(uid, mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 109
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages ON messages(uid, date, mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 110
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages ON messages(mid, out);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 111
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS task_idx_messages ON messages(uid, out, read_state, ttl, date, send_state);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 112
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS send_state_idx_messages ON messages(mid, send_state, date) WHERE mid < 0 AND send_state = 1;"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 114
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE download_queue(uid INTEGER, type INTEGER, date INTEGER, data BLOB, PRIMARY KEY (uid, type));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 115
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS type_date_idx_download_queue ON download_queue(type, date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 117
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE user_phones_v6(uid INTEGER, phone TEXT, sphone TEXT, deleted INTEGER, PRIMARY KEY (uid, phone))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 118
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS sphone_deleted_idx_user_phones ON user_phones_v6(sphone, deleted);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 120
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE dialogs(did INTEGER PRIMARY KEY, date INTEGER, unread_count INTEGER, last_mid INTEGER, inbox_max INTEGER, outbox_max INTEGER, last_mid_i INTEGER, unread_count_i INTEGER, pts INTEGER, date_i INTEGER, pinned INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 121
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS date_idx_dialogs ON dialogs(date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 122
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS last_mid_idx_dialogs ON dialogs(last_mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 123
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS unread_count_idx_dialogs ON dialogs(unread_count);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 124
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS last_mid_i_idx_dialogs ON dialogs(last_mid_i);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 125
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS unread_count_i_idx_dialogs ON dialogs(unread_count_i);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 127
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE randoms(random_id INTEGER, mid INTEGER, PRIMARY KEY (random_id, mid))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 128
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS mid_idx_randoms ON randoms(mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 130
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE enc_tasks_v2(mid INTEGER PRIMARY KEY, date INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 131
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v2 ON enc_tasks_v2(date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 133
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE messages_seq(mid INTEGER PRIMARY KEY, seq_in INTEGER, seq_out INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 134
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS seq_idx_messages_seq ON messages_seq(seq_in, seq_out);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 136
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE params(id INTEGER PRIMARY KEY, seq INTEGER, pts INTEGER, date INTEGER, qts INTEGER, lsv INTEGER, sg INTEGER, pbytes BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 137
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "INSERT INTO params VALUES(1, 0, 0, 0, 0, 0, 0, NULL)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 139
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE media_v2(mid INTEGER PRIMARY KEY, uid INTEGER, date INTEGER, type INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 140
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media ON media_v2(uid, mid, type, date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 142
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE bot_keyboard(uid INTEGER PRIMARY KEY, mid INTEGER, info BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 143
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS bot_keyboard_idx_mid ON bot_keyboard(mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 145
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE chat_settings_v2(uid INTEGER PRIMARY KEY, info BLOB, pinned INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 146
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS chat_settings_pinned_idx ON chat_settings_v2(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 148
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE chat_pinned(uid INTEGER PRIMARY KEY, pinned INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 149
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS chat_pinned_mid_idx ON chat_pinned(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 151
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE chat_hints(did INTEGER, type INTEGER, rating REAL, date INTEGER, PRIMARY KEY(did, type))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 152
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS chat_hints_rating_idx ON chat_hints(rating);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 154
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE botcache(id TEXT PRIMARY KEY, date INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 155
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS botcache_date_idx ON botcache(date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 157
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE users_data(uid INTEGER PRIMARY KEY, about TEXT)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 158
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE users(uid INTEGER PRIMARY KEY, name TEXT, status INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 159
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE chats(uid INTEGER PRIMARY KEY, name TEXT, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 160
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE enc_chats(uid INTEGER PRIMARY KEY, user INTEGER, name TEXT, data BLOB, g BLOB, authkey BLOB, ttl INTEGER, layer INTEGER, seq_in INTEGER, seq_out INTEGER, use_count INTEGER, exchange_id INTEGER, key_date INTEGER, fprint INTEGER, fauthkey BLOB, khash BLOB, in_seq_no INTEGER, admin_id INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 161
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE channel_users_v2(did INTEGER, uid INTEGER, date INTEGER, data BLOB, PRIMARY KEY(did, uid))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 162
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE contacts(uid INTEGER PRIMARY KEY, mutual INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 163
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE wallpapers(uid INTEGER PRIMARY KEY, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 164
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE user_photos(uid INTEGER, id INTEGER, data BLOB, PRIMARY KEY (uid, id))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 165
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE blocked_users(uid INTEGER PRIMARY KEY)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 166
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE dialog_settings(did INTEGER PRIMARY KEY, flags INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 167
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE web_recent_v3(id TEXT, type INTEGER, image_url TEXT, thumb_url TEXT, local_url TEXT, width INTEGER, height INTEGER, size INTEGER, date INTEGER, document BLOB, PRIMARY KEY (id, type));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 168
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE stickers_v2(id INTEGER PRIMARY KEY, data BLOB, date INTEGER, hash TEXT);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 169
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE stickers_featured(id INTEGER PRIMARY KEY, data BLOB, unread BLOB, date INTEGER, hash TEXT);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 170
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE hashtag_recent_v2(id TEXT PRIMARY KEY, date INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 171
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE webpage_pending(id INTEGER, mid INTEGER, PRIMARY KEY (id, mid));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 172
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE user_contacts_v6(uid INTEGER PRIMARY KEY, fname TEXT, sname TEXT)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 173
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE sent_files_v2(uid TEXT, type INTEGER, data BLOB, PRIMARY KEY (uid, type))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 174
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE search_recent(did INTEGER PRIMARY KEY, date INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 175
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE media_counts_v2(uid INTEGER, type INTEGER, count INTEGER, PRIMARY KEY(uid, type))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 176
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE keyvalue(id TEXT PRIMARY KEY, value TEXT)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 177
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE bot_info(uid INTEGER PRIMARY KEY, info BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 178
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE pending_tasks(id INTEGER PRIMARY KEY, data BLOB);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 179
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE requested_holes(uid INTEGER, seq_out_start INTEGER, seq_out_end INTEGER, PRIMARY KEY (uid, seq_out_start, seq_out_end));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 182
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "PRAGMA user_version = 41"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->loadUnreadMessages()V

    .line 232
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->loadPendingTasks()V

    .line 233
    return-void

    .line 187
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "PRAGMA user_version"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 188
    .local v4, "version":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current db version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 189
    if-nez v4, :cond_3

    .line 190
    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "malformed"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    .end local v4    # "version":I
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 226
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "malformed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->cleanupInternal()V

    .line 228
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MessagesStorage;->openDatabase(Z)V

    goto :goto_0

    .line 193
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "version":I
    :cond_3
    :try_start_2
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "SELECT seq, pts, date, qts, lsv, sg, pbytes FROM params WHERE id = 1"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 194
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 195
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 196
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 197
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 198
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 199
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 200
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 201
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 202
    const/4 v5, 0x0

    sput-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 210
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_2
    const/16 v5, 0x29

    if-ge v4, v5, :cond_1

    .line 221
    :try_start_3
    invoke-direct {p0, v4}, Lorg/telegram/messenger/MessagesStorage;->updateDbToLastVersion(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 204
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_5
    const/4 v5, 0x6

    :try_start_4
    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 205
    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    if-eqz v5, :cond_4

    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    array-length v5, v5

    if-ne v5, v9, :cond_4

    .line 206
    const/4 v5, 0x0

    sput-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 211
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :catch_1
    move-exception v2

    .line 212
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 214
    :try_start_6
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE IF NOT EXISTS params(id INTEGER PRIMARY KEY, seq INTEGER, pts INTEGER, date INTEGER, qts INTEGER, lsv INTEGER, sg INTEGER, pbytes BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 215
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "INSERT INTO params VALUES(1, 0, 0, 0, 0, 0, 0, NULL)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 216
    :catch_2
    move-exception v3

    .line 217
    .local v3, "e2":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2
.end method

.method public overwriteChannel(ILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;I)V
    .locals 2
    .param p1, "channel_id"    # I
    .param p2, "difference"    # Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;
    .param p3, "newDialogType"    # I

    .prologue
    .line 4254
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$68;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/MessagesStorage$68;-><init>(Lorg/telegram/messenger/MessagesStorage;IILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4320
    return-void
.end method

.method public processPendingRead(JJI)V
    .locals 9
    .param p1, "dialog_id"    # J
    .param p3, "max_id"    # J
    .param p5, "max_date"    # I

    .prologue
    .line 2440
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$41;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$41;-><init>(Lorg/telegram/messenger/MessagesStorage;JJI)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2486
    return-void
.end method

.method public putBlockedUsers(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$20;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$20;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putCachedPhoneBook(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2557
    .local p1, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$45;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$45;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2591
    return-void
.end method

.method public putChannelViews(Landroid/util/SparseArray;Z)V
    .locals 2
    .param p2, "isChannel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4323
    .local p1, "channelViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$69;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$69;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4352
    return-void
.end method

.method public putContacts(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "deleteAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2489
    .local p1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2516
    :goto_0
    return-void

    .line 2492
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2493
    .local v0, "contactsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$42;

    invoke-direct {v2, p0, p2, v0}, Lorg/telegram/messenger/MessagesStorage$42;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V
    .locals 2
    .param p1, "did"    # I
    .param p2, "photos"    # Lorg/telegram/tgnet/TLRPC$photos_Photos;

    .prologue
    .line 1586
    if-eqz p2, :cond_0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1613
    :cond_0
    :goto_0
    return-void

    .line 1589
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$26;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$26;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$photos_Photos;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
    .locals 2
    .param p1, "dialogs"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .param p2, "check"    # Z

    .prologue
    .line 6268
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6278
    :goto_0
    return-void

    .line 6271
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$85;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$85;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V
    .locals 2
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    .line 3732
    if-nez p1, :cond_0

    .line 3809
    :goto_0
    return-void

    .line 3735
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$62;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$62;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putMessages(Ljava/util/ArrayList;ZZZI)V
    .locals 7
    .param p2, "withTransaction"    # Z
    .param p3, "useQueue"    # Z
    .param p4, "doNotUpdateDialogDate"    # Z
    .param p5, "downloadMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZZI)V"
        }
    .end annotation

    .prologue
    .line 4776
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZ)V

    .line 4777
    return-void
.end method

.method public putMessages(Ljava/util/ArrayList;ZZZIZ)V
    .locals 8
    .param p2, "withTransaction"    # Z
    .param p3, "useQueue"    # Z
    .param p4, "doNotUpdateDialogDate"    # Z
    .param p5, "downloadMask"    # I
    .param p6, "ifNoLastMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZZIZ)V"
        }
    .end annotation

    .prologue
    .line 4780
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4793
    :goto_0
    return-void

    .line 4783
    :cond_0
    if-eqz p3, :cond_1

    .line 4784
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$71;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$71;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZ)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 4791
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V

    goto :goto_0
.end method

.method public putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V
    .locals 10
    .param p1, "messages"    # Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .param p2, "dialog_id"    # J
    .param p4, "load_type"    # I
    .param p5, "max_id"    # I
    .param p6, "createDialog"    # Z

    .prologue
    .line 5682
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$81;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$81;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Messages;IJIZ)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5847
    return-void
.end method

.method public putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Lorg/telegram/tgnet/TLObject;
    .param p3, "type"    # I

    .prologue
    .line 3468
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3510
    :cond_0
    :goto_0
    return-void

    .line 3471
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$54;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$54;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 2
    .param p3, "withTransaction"    # Z
    .param p4, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 4055
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4068
    :goto_0
    return-void

    .line 4058
    :cond_0
    if-eqz p4, :cond_1

    .line 4059
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$63;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$63;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4066
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public putWallpapers(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1056
    .local p1, "wallPapers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$WallPaper;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$12;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1081
    return-void
.end method

.method public putWebPages(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4167
    .local p1, "webPages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4251
    :cond_0
    :goto_0
    return-void

    .line 4170
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$67;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$67;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putWebRecent(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$16;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1219
    return-void
.end method

.method public removeFromDownloadQueue(JIZ)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "move"    # Z

    .prologue
    .line 4071
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$64;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$64;-><init>(Lorg/telegram/messenger/MessagesStorage;ZIJ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4093
    return-void
.end method

.method public removePendingTask(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 684
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$6;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$6;-><init>(Lorg/telegram/messenger/MessagesStorage;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 694
    return-void
.end method

.method public saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 2042
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2069
    :cond_0
    :goto_0
    return-void

    .line 2045
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$34;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$34;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public saveChannelPts(II)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "pts"    # I

    .prologue
    .line 819
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$8;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$8;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 833
    return-void
.end method

.method public saveDiffParams(IIII)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "pts"    # I
    .param p3, "date"    # I
    .param p4, "qts"    # I

    .prologue
    .line 836
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$9;-><init>(Lorg/telegram/messenger/MessagesStorage;IIII)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 859
    return-void
.end method

.method public saveSecretParams(II[B)V
    .locals 2
    .param p1, "lsv"    # I
    .param p2, "sg"    # I
    .param p3, "pbytes"    # [B

    .prologue
    .line 581
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$3;-><init>(Lorg/telegram/messenger/MessagesStorage;II[B)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 601
    return-void
.end method

.method public setDialogFlags(JJ)V
    .locals 7
    .param p1, "did"    # J
    .param p3, "flags"    # J

    .prologue
    .line 862
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$10;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$10;-><init>(Lorg/telegram/messenger/MessagesStorage;JJ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 872
    return-void
.end method

.method public setDialogPinned(JI)V
    .locals 3
    .param p1, "did"    # J
    .param p3, "pinned"    # I

    .prologue
    .line 6251
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$84;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$84;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6265
    return-void
.end method

.method public setMessageSeq(III)V
    .locals 2
    .param p1, "mid"    # I
    .param p2, "seq_in"    # I
    .param p3, "seq_out"    # I

    .prologue
    .line 4867
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$73;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$73;-><init>(Lorg/telegram/messenger/MessagesStorage;III)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4883
    return-void
.end method

.method public startTransaction(Z)V
    .locals 3
    .param p1, "useQueue"    # Z

    .prologue
    .line 3384
    if-eqz p1, :cond_0

    .line 3385
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$51;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesStorage$51;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3402
    :goto_0
    return-void

    .line 3397
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3398
    :catch_0
    move-exception v0

    .line 3399
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unpinAllDialogsExceptNew(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6219
    .local p1, "dids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$83;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$83;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6248
    return-void
.end method

.method public updateChannelPinnedMessage(II)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 2174
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$37;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$37;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2217
    return-void
.end method

.method public updateChannelUsers(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "channel_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2008
    .local p2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChannelParticipant;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$33;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$33;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2039
    return-void
.end method

.method public updateChatInfo(IIIII)V
    .locals 8
    .param p1, "chat_id"    # I
    .param p2, "user_id"    # I
    .param p3, "what"    # I
    .param p4, "invited_id"    # I
    .param p5, "version"    # I

    .prologue
    .line 2220
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$38;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$38;-><init>(Lorg/telegram/messenger/MessagesStorage;IIIII)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2302
    return-void
.end method

.method public updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
    .locals 2
    .param p1, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p2, "ifExist"    # Z

    .prologue
    .line 2111
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$36;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$36;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2171
    return-void
.end method

.method public updateChatParticipants(Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V
    .locals 2
    .param p1, "participants"    # Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .prologue
    .line 1961
    if-nez p1, :cond_0

    .line 2005
    :goto_0
    return-void

    .line 1964
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$32;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$32;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V
    .locals 2
    .param p3, "useQueue"    # Z
    .param p4, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 5436
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "additionalDialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 5449
    :goto_0
    return-void

    .line 5439
    :cond_0
    if-eqz p3, :cond_1

    .line 5440
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$79;

    invoke-direct {v1, p0, p1, p2, p4}, Lorg/telegram/messenger/MessagesStorage$79;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5447
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public updateDialogsWithReadMessages(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V
    .locals 2
    .param p3, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1945
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p2, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1958
    :goto_0
    return-void

    .line 1948
    :cond_0
    if-eqz p3, :cond_1

    .line 1949
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$31;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$31;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1956
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method public updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3588
    if-nez p1, :cond_0

    .line 3651
    :goto_0
    return-void

    .line 3591
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$58;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$58;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateEncryptedChatLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3564
    if-nez p1, :cond_0

    .line 3585
    :goto_0
    return-void

    .line 3567
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$57;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$57;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3513
    if-nez p1, :cond_0

    .line 3537
    :goto_0
    return-void

    .line 3516
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$55;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$55;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateEncryptedChatTTL(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3540
    if-nez p1, :cond_0

    .line 3561
    :goto_0
    return-void

    .line 3543
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$56;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$56;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J
    .locals 9
    .param p1, "random_id"    # J
    .param p3, "_oldId"    # Ljava/lang/Integer;
    .param p4, "newId"    # I
    .param p5, "date"    # I
    .param p6, "useQueue"    # Z
    .param p7, "channelId"    # I

    .prologue
    .line 5003
    if-eqz p6, :cond_0

    .line 5004
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$74;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$74;-><init>(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Integer;III)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5013
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p7

    .line 5011
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J

    move-result-object v0

    goto :goto_0
.end method

.method public updateUsers(Ljava/util/ArrayList;ZZZ)V
    .locals 2
    .param p2, "onlyStatus"    # Z
    .param p3, "withTransaction"    # Z
    .param p4, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 5085
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5098
    :goto_0
    return-void

    .line 5088
    :cond_0
    if-eqz p4, :cond_1

    .line 5089
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$75;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$75;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5096
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUsersInternal(Ljava/util/ArrayList;ZZ)V

    goto :goto_0
.end method
