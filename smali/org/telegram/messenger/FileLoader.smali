.class public Lorg/telegram/messenger/FileLoader;
.super Ljava/lang/Object;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/FileLoader; = null

.field public static final MEDIA_DIR_AUDIO:I = 0x1

.field public static final MEDIA_DIR_CACHE:I = 0x4

.field public static final MEDIA_DIR_DOCUMENT:I = 0x3

.field public static final MEDIA_DIR_IMAGE:I = 0x0

.field public static final MEDIA_DIR_THEME:I = 0x5

.field public static final MEDIA_DIR_VIDEO:I = 0x2


# instance fields
.field private audioLoadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private currentAudioLoadOperationsCount:I

.field private currentLoadOperationsCount:I

.field private currentPhotoLoadOperationsCount:I

.field private currentUploadOperationsCount:I

.field private currentUploadSmallOperationsCount:I

.field private delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

.field private volatile fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

.field private isOut:Z

.field private loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private loadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDirs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private photoLoadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private uploadSmallOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v3, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    .line 45
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "fileUploadQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    .line 57
    iput-object v3, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .line 59
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    .line 60
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    .line 61
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    .line 62
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    .line 63
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/FileLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1108(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1110(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/FileLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1308(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1310(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/FileLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1508(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1510(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    .param p3, "x3"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$508(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$510(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$608(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$610(Lorg/telegram/messenger/FileLoader;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 7
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    .param p3, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "locationExt"    # Ljava/lang/String;

    .prologue
    .line 295
    if-nez p3, :cond_0

    if-nez p1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader$4;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private checkDownloadQueue(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 7
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    .param p3, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "arg1"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v6, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$7;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader$7;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 619
    return-void
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 863
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 867
    instance-of v7, p0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_a

    move-object v1, p0

    .line 868
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 869
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v0, 0x0

    .line 870
    .local v0, "docExt":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 871
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_0

    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, "idx":I
    if-ne v2, v5, :cond_4

    .line 874
    .end local v2    # "idx":I
    :cond_0
    const-string/jumbo v0, ""

    .line 879
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v6, :cond_3

    .line 880
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 881
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 889
    const-string/jumbo v0, ""

    .line 896
    :cond_3
    :goto_2
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    if-nez v5, :cond_8

    .line 897
    sget-boolean v5, Lorg/telegram/messenger/ApplicationLoader;->KEEP_ORIGINAL_FILENAME:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "webp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, ".mp4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, ".gif"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, ".ogg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    .line 926
    .end local v0    # "docExt":Ljava/lang/String;
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local p1    # "ext":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 876
    .restart local v0    # "docExt":Ljava/lang/String;
    .restart local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v2    # "idx":I
    .restart local p1    # "ext":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 881
    .end local v2    # "idx":I
    :sswitch_0
    const-string/jumbo v8, "video/mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v8, "audio/ogg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_1

    .line 883
    :pswitch_0
    const-string/jumbo v0, ".mp4"

    .line 884
    goto :goto_2

    .line 886
    :pswitch_1
    const-string/jumbo v0, ".ogg"

    .line 887
    goto :goto_2

    .line 893
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_2

    .line 898
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_7

    .line 899
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 901
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 904
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_9

    .line 905
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 907
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 910
    .end local v0    # "docExt":Ljava/lang/String;
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_a
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v5, :cond_b

    move-object v1, p0

    .line 911
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 912
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 913
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_b
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v5, :cond_f

    move-object v4, p0

    .line 914
    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 915
    .local v4, "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_c

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v5, :cond_d

    .line 916
    :cond_c
    const-string/jumbo v5, ""

    goto/16 :goto_3

    .line 918
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_e

    .end local p1    # "ext":Ljava/lang/String;
    :goto_4
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .restart local p1    # "ext":Ljava/lang/String;
    :cond_e
    const-string/jumbo p1, "jpg"

    goto :goto_4

    .line 919
    .end local v4    # "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_f
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_12

    .line 920
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v5, :cond_10

    .line 921
    const-string/jumbo v5, ""

    goto/16 :goto_3

    :cond_10
    move-object v3, p0

    .line 923
    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 924
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_11

    .end local p1    # "ext":Ljava/lang/String;
    :goto_5
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .restart local p1    # "ext":Ljava/lang/String;
    :cond_11
    const-string/jumbo p1, "jpg"

    goto :goto_5

    .line 926
    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_12
    const-string/jumbo v5, ""

    goto/16 :goto_3

    .line 881
    :sswitch_data_0
    .sparse-switch
        0xb26cbd6 -> :sswitch_1
        0x4f62635d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "ext"    # Ljava/lang/String;
    .param p2, "out"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 1055
    instance-of v7, p0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_a

    move-object v1, p0

    .line 1056
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1057
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v0, 0x0

    .line 1058
    .local v0, "docExt":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1059
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    if-eqz v0, :cond_0

    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, "idx":I
    if-ne v2, v5, :cond_4

    .line 1062
    .end local v2    # "idx":I
    :cond_0
    const-string/jumbo v0, ""

    .line 1067
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v6, :cond_3

    .line 1068
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1069
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 1077
    const-string/jumbo v0, ""

    .line 1084
    :cond_3
    :goto_2
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    if-nez v5, :cond_8

    .line 1085
    if-nez p2, :cond_6

    sget-boolean v5, Lorg/telegram/messenger/ApplicationLoader;->KEEP_ORIGINAL_FILENAME:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "webp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, ".mp4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, ".gif"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, ".ogg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    .line 1114
    .end local v0    # "docExt":Ljava/lang/String;
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local p1    # "ext":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 1064
    .restart local v0    # "docExt":Ljava/lang/String;
    .restart local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v2    # "idx":I
    .restart local p1    # "ext":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1069
    .end local v2    # "idx":I
    :sswitch_0
    const-string/jumbo v8, "video/mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v8, "audio/ogg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_1

    .line 1071
    :pswitch_0
    const-string/jumbo v0, ".mp4"

    .line 1072
    goto :goto_2

    .line 1074
    :pswitch_1
    const-string/jumbo v0, ".ogg"

    .line 1075
    goto :goto_2

    .line 1081
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_2

    .line 1086
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_7

    .line 1087
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1089
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1092
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_9

    .line 1093
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 1095
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 1098
    .end local v0    # "docExt":Ljava/lang/String;
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_a
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v5, :cond_b

    move-object v1, p0

    .line 1099
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 1100
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 1101
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_b
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v5, :cond_f

    move-object v4, p0

    .line 1102
    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1103
    .local v4, "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_c

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v5, :cond_d

    .line 1104
    :cond_c
    const-string/jumbo v5, ""

    goto/16 :goto_3

    .line 1106
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_e

    .end local p1    # "ext":Ljava/lang/String;
    :goto_4
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .restart local p1    # "ext":Ljava/lang/String;
    :cond_e
    const-string/jumbo p1, "jpg"

    goto :goto_4

    .line 1107
    .end local v4    # "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_f
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_12

    .line 1108
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v5, :cond_10

    .line 1109
    const-string/jumbo v5, ""

    goto/16 :goto_3

    :cond_10
    move-object v3, p0

    .line 1111
    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1112
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_11

    .end local p1    # "ext":Ljava/lang/String;
    :goto_5
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .restart local p1    # "ext":Ljava/lang/String;
    :cond_11
    const-string/jumbo p1, "jpg"

    goto :goto_5

    .line 1114
    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_12
    const-string/jumbo v5, ""

    goto/16 :goto_3

    .line 1069
    :sswitch_data_0
    .sparse-switch
        0xb26cbd6 -> :sswitch_1
        0x4f62635d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 1
    .param p1, "side"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;I)",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;"
        }
    .end annotation

    .prologue
    .line 778
    .local p0, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    return-object v0
.end method

.method public static getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 9
    .param p1, "side"    # I
    .param p2, "byMinSide"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;IZ)",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;"
        }
    .end annotation

    .prologue
    .local p0, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/16 v8, 0x64

    const/high16 v7, -0x80000000

    .line 782
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 783
    :cond_0
    const/4 v1, 0x0

    .line 806
    :cond_1
    return-object v1

    .line 785
    :cond_2
    const/4 v3, 0x0

    .line 786
    .local v3, "lastSide":I
    const/4 v1, 0x0

    .line 787
    .local v1, "closestObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 788
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 789
    .local v4, "obj":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v4, :cond_4

    .line 787
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_4
    if-eqz p2, :cond_8

    .line 793
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-lt v5, v6, :cond_7

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 794
    .local v2, "currentSide":I
    :goto_2
    if-eqz v1, :cond_6

    if-le p1, v8, :cond_5

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v5, v7, :cond_6

    :cond_5
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-nez v5, :cond_6

    if-le p1, v3, :cond_3

    if-ge v3, v2, :cond_3

    .line 795
    :cond_6
    move-object v1, v4

    .line 796
    move v3, v2

    goto :goto_1

    .line 793
    .end local v2    # "currentSide":I
    :cond_7
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto :goto_2

    .line 799
    :cond_8
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-lt v5, v6, :cond_b

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 800
    .restart local v2    # "currentSide":I
    :goto_3
    if-eqz v1, :cond_a

    if-le p1, v8, :cond_9

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_9

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v5, v7, :cond_a

    :cond_9
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-nez v5, :cond_a

    if-gt v2, p1, :cond_3

    if-ge v3, v2, :cond_3

    .line 801
    :cond_a
    move-object v1, v4

    .line 802
    move v3, v2

    goto :goto_1

    .line 799
    .end local v2    # "currentSide":I
    :cond_b
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto :goto_3
.end method

.method public static getDocName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .locals 12
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1118
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    .line 1122
    .local v5, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    .local v1, "date":Ljava/lang/String;
    move-object v2, v5

    .line 1124
    .local v2, "ext":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1125
    .local v4, "idx":I
    if-eqz v2, :cond_0

    const-string/jumbo v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 1126
    :cond_0
    const-string/jumbo v2, ""

    .line 1130
    :goto_0
    const-string/jumbo v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1131
    .local v6, "pos":I
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "ddMMyyHHmmss"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1132
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1133
    .local v0, "calendar":Ljava/util/Calendar;
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    int-to-long v8, v7

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1134
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1135
    if-lez v6, :cond_1

    .line 1136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1139
    :cond_1
    return-object v5

    .line 1128
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v6    # "pos":I
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDocumentExtension(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .locals 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 846
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "fileName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 848
    .local v2, "idx":I
    const/4 v0, 0x0

    .line 849
    .local v0, "ext":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 850
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 852
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 853
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 855
    :cond_2
    if-nez v0, :cond_3

    .line 856
    const-string/jumbo v0, ""

    .line 858
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 859
    return-object v0
.end method

.method public static getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .locals 3
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 819
    if-eqz p0, :cond_2

    .line 820
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    .line 830
    :goto_0
    return-object v2

    .line 823
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 824
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 825
    .local v1, "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    if-eqz v2, :cond_1

    .line 826
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    goto :goto_0

    .line 823
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 830
    .end local v0    # "a":I
    .end local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    .line 835
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 836
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 838
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 810
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 814
    :goto_0
    return-object v2

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getInstance()Lorg/telegram/messenger/FileLoader;
    .locals 4

    .prologue
    .line 70
    sget-object v0, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;

    .line 71
    .local v0, "localInstance":Lorg/telegram/messenger/FileLoader;
    if-nez v0, :cond_1

    .line 72
    const-class v3, Lorg/telegram/messenger/FileLoader;

    monitor-enter v3

    .line 73
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;

    .line 74
    if-nez v0, :cond_0

    .line 75
    new-instance v1, Lorg/telegram/messenger/FileLoader;

    invoke-direct {v1}, Lorg/telegram/messenger/FileLoader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .local v1, "localInstance":Lorg/telegram/messenger/FileLoader;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 77
    .end local v1    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 79
    :cond_1
    return-object v0

    .line 77
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/FileLoader;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    goto :goto_0
.end method

.method public static getInternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 842
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;
    .locals 6
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 626
    if-nez p0, :cond_0

    .line 627
    const-string/jumbo v3, ""

    .line 671
    :goto_0
    return-object v3

    .line 629
    :cond_0
    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v3, :cond_1

    .line 630
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_7

    .line 631
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 632
    .local v2, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 633
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 634
    .local v1, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_7

    .line 635
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 640
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_1
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v3, :cond_2

    .line 641
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 642
    :cond_2
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_3

    .line 643
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 644
    .restart local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 645
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 646
    .restart local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_7

    .line 647
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 650
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_3
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v3, :cond_6

    .line 651
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_4

    .line 652
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 653
    .restart local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 654
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 655
    .restart local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_7

    .line 656
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 659
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_4
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_5

    .line 660
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 661
    :cond_5
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v3, :cond_7

    .line 662
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 664
    :cond_6
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v3, :cond_7

    .line 665
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 666
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    if-eqz v0, :cond_7

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 671
    .end local v0    # "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_7
    const-string/jumbo v3, ""

    goto/16 :goto_0
.end method

.method public static getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;
    .locals 2
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 719
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;
    .locals 11
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "ext"    # Ljava/lang/String;
    .param p2, "forceCache"    # Z

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, "dir":Ljava/io/File;
    if-eqz p2, :cond_1

    .line 729
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 771
    :cond_0
    :goto_0
    if-nez v0, :cond_10

    .line 772
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ""

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    :goto_1
    return-object v4

    .line 731
    :cond_1
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_5

    move-object v1, p0

    .line 732
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 733
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v4, :cond_2

    .line 734
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 736
    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 737
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 739
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 741
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 744
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_5
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_9

    move-object v3, p0

    .line 745
    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 746
    .local v3, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_7

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_7

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v6, -0x80000000

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ltz v4, :cond_7

    :cond_6
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-gez v4, :cond_8

    .line 747
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 751
    .end local v3    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_9
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_c

    move-object v2, p0

    .line 752
    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 753
    .local v2, "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_a

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v6, -0x80000000

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-gez v4, :cond_b

    .line 754
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_0

    .line 756
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_0

    .line 758
    .end local v2    # "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_c
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v4, :cond_0

    move-object v1, p0

    .line 759
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 760
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 761
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_0

    .line 762
    :cond_d
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 763
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_0

    .line 764
    :cond_e
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 765
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_0

    .line 767
    :cond_f
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_0

    .line 774
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_10
    new-instance v4, Ljava/io/File;

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;
    .locals 1
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "forceCache"    # Z

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    .locals 6
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 675
    if-nez p0, :cond_0

    .line 676
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    :goto_0
    return-object v2

    .line 678
    :cond_0
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v4, :cond_1

    .line 679
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_8

    .line 680
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 681
    .local v1, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 682
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 683
    .local v0, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_8

    .line 684
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 689
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_1
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_3

    .line 690
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v5, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 691
    :cond_3
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_5

    .line 692
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 693
    .restart local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 694
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v1, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 695
    .restart local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_8

    .line 696
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v4, :cond_4

    :goto_1
    invoke-static {v0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    .line 699
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_5
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_7

    .line 700
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_6

    .line 701
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 702
    :cond_6
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_8

    .line 703
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 704
    .restart local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 705
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 706
    .restart local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_8

    .line 707
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto/16 :goto_0

    .line 711
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_7
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v2, :cond_8

    .line 712
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    goto/16 :goto_0

    .line 715
    :cond_8
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZI)V
    .locals 10
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    .param p3, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "locationExt"    # Ljava/lang/String;
    .param p5, "locationSize"    # I
    .param p6, "force"    # Z
    .param p7, "cacheType"    # I

    .prologue
    .line 377
    iget-object v9, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$6;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p6

    move v7, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/FileLoader$6;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;ZII)V

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 549
    return-void
.end method


# virtual methods
.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 2
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, v1, v1, v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V
    .locals 1
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, v0, p1, v0, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public cancelUploadFile(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "enc"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/FileLoader$1;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public checkDirectory(I)Ljava/io/File;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public checkUploadNewDataAvailable(Ljava/lang/String;ZJ)V
    .locals 7
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "finalSize"    # J

    .prologue
    .line 127
    iget-object v6, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$2;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader$2;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;J)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public deleteFiles(Ljava/util/ArrayList;I)V
    .locals 2
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 930
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/FileLoader$8;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getDirectory(I)Ljava/io/File;
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x4

    .line 91
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 92
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_0

    if-eq p1, v3, :cond_0

    .line 93
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dir":Ljava/io/File;
    check-cast v0, Ljava/io/File;

    .line 96
    .restart local v0    # "dir":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_1
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isLoadingFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 334
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 335
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Boolean;

    .line 336
    .local v1, "result":[Ljava/lang/Boolean;
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/FileLoader$5;

    invoke-direct {v4, p0, v1, p1, v2}, Lorg/telegram/messenger/FileLoader$5;-><init>(Lorg/telegram/messenger/FileLoader;[Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 344
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V
    .locals 8
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "force"    # Z
    .param p3, "cacheType"    # I

    .prologue
    const/4 v2, 0x0

    .line 359
    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v0, :cond_0

    .line 360
    const/4 p3, 0x1

    .line 362
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZI)V

    .line 363
    return-void
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;II)V
    .locals 8
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "cacheType"    # I

    .prologue
    const/4 v1, 0x0

    .line 370
    if-nez p4, :cond_1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    const/4 p4, 0x1

    .line 373
    :cond_1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZI)V

    .line 374
    return-void
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;I)V
    .locals 8
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "cacheType"    # I

    .prologue
    const/4 v1, 0x0

    .line 352
    if-nez p3, :cond_2

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-eqz v0, :cond_2

    .line 353
    :cond_1
    const/4 p3, 0x1

    .line 355
    :cond_2
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZI)V

    .line 356
    return-void
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$TL_webDocument;ZI)V
    .locals 8
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    .param p2, "force"    # Z
    .param p3, "cacheType"    # I

    .prologue
    const/4 v1, 0x0

    .line 366
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZI)V

    .line 367
    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .prologue
    .line 622
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .line 623
    return-void
.end method

.method public setMediaDirs(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "dirs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method public uploadFile(Ljava/lang/String;ZZI)V
    .locals 6
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "small"    # Z
    .param p4, "type"    # I

    .prologue
    .line 146
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZII)V

    .line 147
    return-void
.end method

.method public uploadFile(Ljava/lang/String;ZZII)V
    .locals 8
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "small"    # Z
    .param p4, "estimatedSize"    # I
    .param p5, "type"    # I

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v7, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$3;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileLoader$3;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;IIZ)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
