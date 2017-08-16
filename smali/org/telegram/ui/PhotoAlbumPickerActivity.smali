.class public Lorg/telegram/ui/PhotoAlbumPickerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;,
        Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    }
.end annotation


# static fields
.field public static imageFilter:Ljava/lang/String;


# instance fields
.field private albumsSorted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private allowCaption:Z

.field private allowGifs:Z

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field private columnsCount:I

.field private delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

.field private emptyView:Landroid/widget/TextView;

.field private listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

.field private progressView:Landroid/widget/FrameLayout;

.field private recentGifImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private recentImagesGifKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private recentImagesWebKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private recentWebImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private selectedWebPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private sendPressed:Z

.field private singlePhoto:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "*"

    sput-object v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->imageFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZZLorg/telegram/ui/ChatActivity;)V
    .locals 1
    .param p1, "singlePhoto"    # Z
    .param p2, "allowGifs"    # Z
    .param p3, "allowCaption"    # Z
    .param p4, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 81
    iput-object p4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    .line 83
    iput-boolean p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowGifs:Z

    .line 84
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowCaption:Z

    .line 85
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendSelectedPhotos()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoAlbumPickerActivity;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowGifs:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    return v0
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 357
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 359
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 370
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method private fixLayoutInternal()V
    .locals 4

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 384
    :goto_0
    return-void

    .line 377
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 378
    .local v0, "manager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 379
    .local v1, "rotation":I
    const/4 v2, 0x2

    iput v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 380
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 381
    :cond_1
    const/4 v2, 0x4

    iput v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 383
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 9
    .param p1, "albumEntry"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p2, "type"    # I

    .prologue
    .line 387
    const/4 v5, 0x0

    .line 388
    .local v5, "recentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    if-nez p1, :cond_0

    .line 389
    if-nez p2, :cond_1

    .line 390
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    .line 395
    :cond_0
    :goto_0
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    iget-boolean v7, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowCaption:Z

    iget-object v8, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    move v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/PhotoPickerActivity;-><init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;ZZLorg/telegram/ui/ChatActivity;)V

    .line 396
    .local v0, "fragment":Lorg/telegram/ui/PhotoPickerActivity;
    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    .line 412
    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 413
    return-void

    .line 391
    .end local v0    # "fragment":Lorg/telegram/ui/PhotoPickerActivity;
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 392
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private sendSelectedPhotos()V
    .locals 22

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPressed:Z

    if-eqz v2, :cond_2

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPressed:Z

    .line 290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v3, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v6, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v4, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v5, "ttls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v7, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 296
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 297
    .local v12, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-boolean v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_4

    .line 298
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    :cond_4
    iget-object v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 300
    iget-object v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    iget-object v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->ttl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 302
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 304
    :cond_7
    iget-object v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 305
    iget-object v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    iget-object v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget v2, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->ttl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 306
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 307
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 311
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    .end local v12    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v8, "webPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    const/4 v11, 0x0

    .line 313
    .local v11, "gifChanged":Z
    const/4 v15, 0x0

    .line 314
    .local v15, "webChange":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 315
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$SearchImage;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 316
    .local v14, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 317
    iget-object v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    iget-object v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v14, Lorg/telegram/messenger/MediaController$SearchImage;->stickers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_8
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;->ttl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v2, v0

    iput v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    .line 326
    iget v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-nez v2, :cond_10

    .line 327
    const/4 v15, 0x1

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    iget-object v0, v14, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 329
    .local v13, "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    if-eqz v13, :cond_f

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 318
    .end local v13    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    .line 319
    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    .line 322
    :cond_e
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 333
    .restart local v13    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 335
    .end local v13    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_10
    iget v2, v14, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_b

    .line 336
    const/4 v11, 0x1

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    iget-object v0, v14, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 338
    .restart local v13    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    if-eqz v13, :cond_11

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 342
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 346
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v13    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v14    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_12
    if-eqz v15, :cond_13

    .line 347
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->putWebRecent(Ljava/util/ArrayList;)V

    .line 349
    :cond_13
    if-eqz v11, :cond_14

    .line 350
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->putWebRecent(Ljava/util/ArrayList;)V

    .line 353
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    invoke-interface/range {v2 .. v8}, Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;->didSelectPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v10, 0x42400000    # 48.0f

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 111
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, -0xcccccd

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 112
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 113
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, -0xc2c2c3

    invoke-virtual {v4, v5, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 114
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f0200bc

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 115
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 129
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 130
    .local v2, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v4, 0x7f0200c3

    invoke-virtual {v2, v11, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 132
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fragmentView:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 135
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 137
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "Gallery"

    const v6, 0x7f07032f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 140
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v9, v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 141
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 142
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setHorizontalScrollBarEnabled(Z)V

    .line 143
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 144
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v11, v9}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 145
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setDrawingCacheEnabled(Z)V

    .line 146
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 149
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 150
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 151
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 153
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v5, -0xcccccd

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 155
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    .line 156
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const v5, -0x7f7f80

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const-string/jumbo v5, "NoPhotos"

    const v6, 0x7f07047d

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 164
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 165
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 166
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    .line 175
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 176
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 179
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 180
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 181
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v3, "progressBar":Lorg/telegram/ui/Components/RadialProgressView;
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 187
    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 188
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 189
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v4, Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    .line 192
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PickerBottomLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 195
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 196
    const/16 v4, 0x50

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 197
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$3;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$4;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 214
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 219
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5, v11}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 221
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 216
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 217
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 242
    sget v3, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    if-ne p1, v3, :cond_5

    .line 243
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 244
    .local v0, "guid":I
    iget v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->classGuid:I

    if-ne v3, v0, :cond_3

    .line 245
    iget-boolean v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    if-eqz v3, :cond_4

    .line 246
    const/4 v3, 0x2

    aget-object v3, p2, v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    .line 250
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 253
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 254
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 256
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    if-eqz v3, :cond_2

    .line 257
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 259
    :cond_2
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    .line 279
    .end local v0    # "guid":I
    :cond_3
    :goto_1
    return-void

    .line 248
    .restart local v0    # "guid":I
    :cond_4
    aget-object v3, p2, v4

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    goto :goto_0

    .line 261
    .end local v0    # "guid":I
    :cond_5
    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v3, :cond_6

    .line 262
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->removeSelfFromStack()V

    goto :goto_1

    .line 263
    :cond_6
    sget v3, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    if-ne p1, v3, :cond_3

    .line 264
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 265
    .local v2, "type":I
    if-nez v2, :cond_7

    .line 266
    aget-object v3, p2, v4

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    .line 267
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 268
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 269
    .local v1, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 271
    .end local v1    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_7
    if-ne v2, v4, :cond_3

    .line 272
    aget-object v3, p2, v4

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    .line 273
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 274
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 275
    .restart local v1    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 235
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayout()V

    .line 237
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    .line 90
    sget-object v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->imageFilter:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/MediaController;->iFilter:Ljava/lang/String;

    .line 91
    sget-object v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->imageFilter:Ljava/lang/String;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    .line 92
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->classGuid:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 93
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 94
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 95
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 96
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 102
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 103
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 104
    const-string/jumbo v0, "*"

    sput-object v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->imageFilter:Ljava/lang/String;

    .line 105
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 230
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayout()V

    .line 231
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    .prologue
    .line 282
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    .line 283
    return-void
.end method
