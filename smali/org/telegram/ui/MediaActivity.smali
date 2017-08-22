.class public Lorg/telegram/ui/MediaActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedMediaData;
    }
.end annotation


# static fields
.field private static final delete:I = 0x4

.field private static final files_item:I = 0x2

.field private static final forward:I = 0x3

.field private static final links_item:I = 0x5

.field private static final music_item:I = 0x6

.field private static final quoteforward:I = 0x21

.field private static final shared_media_item:I = 0x1


# instance fields
.field private actionModeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

.field private audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private cantDeleteMessagesCount:I

.field private cellCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell;",
            ">;"
        }
    .end annotation
.end field

.field private columnsCount:I

.field private dialog_id:J

.field private documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

.field private documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dropDownDrawable:Landroid/graphics/drawable/Drawable;

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptyTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field protected info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

.field private linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mergeDialogId:J

.field private photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressView:Landroid/widget/LinearLayout;

.field private scrolling:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchWas:Z

.field private searching:Z

.field private selectedFiles:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private selectedMode:I

.field private sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/HashMap;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 138
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 213
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/MediaActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/MediaActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/MediaActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    return v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "x4"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/MediaActivity;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    return v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/MediaActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MediaActivity;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/MediaActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MediaActivity;->processClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/MediaActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity;->goToMessage(I)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/MediaActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/MediaActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private fixLayoutInternal()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/high16 v7, 0x43000000    # 128.0f

    const/4 v3, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    .line 1481
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v4, :cond_1

    .line 1520
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1485
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1487
    .local v2, "rotation":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_4

    .line 1488
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 1493
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1494
    iput v9, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1495
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1505
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 1507
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    .line 1508
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1509
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1510
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1511
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1514
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_8

    .line 1515
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 1490
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_1

    .line 1497
    :cond_5
    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 1498
    :cond_6
    const/4 v4, 0x6

    iput v4, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1499
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 1501
    :cond_7
    iput v9, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1502
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 1517
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0
.end method

.method private goToMessage(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 1361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1362
    .local v0, "args":Landroid/os/Bundle;
    iget-wide v2, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v1, v2

    .line 1363
    .local v1, "lower_part":I
    if-eqz v1, :cond_2

    .line 1364
    if-lez v1, :cond_1

    .line 1365
    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1372
    :cond_0
    :goto_0
    const-string/jumbo v2, "message_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1373
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1374
    return-void

    .line 1366
    :cond_1
    if-gez v1, :cond_0

    .line 1367
    const-string/jumbo v2, "chat_id"

    neg-int v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1370
    :cond_2
    const-string/jumbo v2, "enc_id"

    iget-wide v4, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 35
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "a"    # I

    .prologue
    .line 1158
    if-nez p3, :cond_1

    .line 1358
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1161
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1162
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_3

    const/16 v27, 0x0

    .line 1163
    .local v27, "loadIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1166
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 1177
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1182
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1183
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 1184
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_7

    .line 1185
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 1162
    .end local v27    # "loadIndex":I
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    const/16 v27, 0x1

    goto/16 :goto_1

    .line 1169
    .restart local v27    # "loadIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v9, 0x1

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1174
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    goto/16 :goto_2

    .line 1180
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v9, 0x0

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    add-int/2addr v3, v9

    const/4 v9, 0x1

    invoke-virtual {v2, v3, v9}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    goto/16 :goto_3

    .line 1182
    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 1186
    :cond_7
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v2, :cond_8

    .line 1187
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto/16 :goto_0

    .line 1188
    .restart local p2    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v2, :cond_0

    .line 1189
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 1192
    .end local v27    # "loadIndex":I
    .restart local p2    # "view":Landroid/view/View;
    :cond_9
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    if-eqz v2, :cond_14

    .line 1194
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1195
    .local v8, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "Message"

    const v3, 0x7f07041d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    .line 1196
    .local v32, "title":Ljava/lang/String;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    .local v25, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 1198
    :cond_a
    const-string/jumbo v2, "Open"

    const v3, 0x7f070505

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v2, :cond_f

    const-string/jumbo v2, "SharedMedia"

    const v3, 0x7f07067f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    .line 1213
    :cond_b
    :goto_5
    const-string/jumbo v2, "GoToMessage"

    const v3, 0x7f070336

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    move-object/from16 v5, p2

    .line 1215
    .local v5, "v":Landroid/view/View;
    move-object/from16 v6, p3

    .line 1216
    .local v6, "msg":Lorg/telegram/messenger/MessageObject;
    move/from16 v4, p1

    .line 1217
    .local v4, "indx":I
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    .line 1218
    .local v7, "id":I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/CharSequence;

    .line 1219
    .local v22, "finalItems":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/MediaActivity$10;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/MediaActivity$10;-><init>(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1230
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_d

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_d

    .line 1231
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\n"

    const-string/jumbo v9, " "

    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 1232
    .local v29, "name":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_d

    .line 1233
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v9, 0x14

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1234
    :cond_c
    move-object/from16 v32, v29

    .line 1237
    .end local v29    # "name":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1238
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    .line 1239
    .local v33, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v33, :cond_e

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1243
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_e
    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1244
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1199
    .end local v4    # "indx":I
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "msg":Lorg/telegram/messenger/MessageObject;
    .end local v7    # "id":I
    .end local v22    # "finalItems":[Ljava/lang/CharSequence;
    :cond_f
    const-string/jumbo v2, "ChannelLinkTitle"

    const v3, 0x7f07013d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_5

    .line 1200
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 1201
    :cond_11
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_b

    move-object/from16 v17, p2

    .line 1202
    check-cast v17, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1203
    .local v17, "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1204
    const-string/jumbo v2, "Open"

    const v3, 0x7f070505

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1205
    :cond_12
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1206
    const-string/jumbo v2, "Download"

    const v3, 0x7f070235

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1208
    :cond_13
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f070105

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1246
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v17    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    .end local v25    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v32    # "title":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v2, :cond_15

    .line 1247
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 1248
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    move/from16 v11, p1

    move-object/from16 v16, p0

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_0

    .line 1249
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_27

    .line 1250
    :cond_16
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_0

    move-object/from16 v17, p2

    .line 1251
    check-cast v17, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1252
    .restart local v17    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1253
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1254
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v3, v3, v9

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1258
    :cond_17
    const/16 v20, 0x0

    .line 1259
    .local v20, "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_1b

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v21

    .line 1260
    .local v21, "fileName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_18

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_18

    .line 1261
    new-instance v20, Ljava/io/File;

    .end local v20    # "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1263
    .restart local v20    # "f":Ljava/io/File;
    :cond_18
    if-eqz v20, :cond_19

    if-eqz v20, :cond_1a

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1264
    :cond_19
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v20

    .line 1266
    :cond_1a
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1267
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "attheme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1268
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v31

    .line 1269
    .local v31, "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    if-eqz v31, :cond_1c

    .line 1270
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 1259
    .end local v21    # "fileName":Ljava/lang/String;
    .end local v31    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_1b
    const-string/jumbo v21, ""

    goto :goto_6

    .line 1272
    .restart local v21    # "fileName":Ljava/lang/String;
    .restart local v31    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_1c
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1273
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f07007d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1274
    const-string/jumbo v2, "IncorrectTheme"

    const v3, 0x7f070381

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1275
    const-string/jumbo v2, "OK"

    const v3, 0x7f0704f5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1276
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1279
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v31    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_1d
    const/16 v30, 0x0

    .line 1281
    .local v30, "realMimeType":Ljava/lang/String;
    :try_start_0
    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v24, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1283
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v28

    .line 1284
    .local v28, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v2, 0x2e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v23

    .line 1285
    .local v23, "idx":I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_1f

    .line 1286
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 1287
    .local v19, "ext":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1288
    if-nez v30, :cond_1f

    .line 1289
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1290
    if-eqz v30, :cond_1e

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f

    .line 1291
    :cond_1e
    const/16 v30, 0x0

    .line 1295
    .end local v19    # "ext":Ljava/lang/String;
    :cond_1f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_21

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "org.telegram.multi.provider"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v30, :cond_20

    move-object/from16 v2, v30

    :goto_7
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1300
    :goto_8
    if-eqz v30, :cond_24

    .line 1302
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1303
    :catch_0
    move-exception v18

    .line 1304
    .local v18, "e":Ljava/lang/Exception;
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_23

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "org.telegram.multi.provider"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "text/plain"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1314
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v23    # "idx":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v28    # "myMime":Landroid/webkit/MimeTypeMap;
    :catch_1
    move-exception v18

    .line 1315
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1318
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1319
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f07007d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1320
    const-string/jumbo v2, "OK"

    const v3, 0x7f0704f5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1321
    const-string/jumbo v2, "NoHandleAppInstalled"

    const v3, 0x7f070473

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v2, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1322
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1296
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v23    # "idx":I
    .restart local v24    # "intent":Landroid/content/Intent;
    .restart local v28    # "myMime":Landroid/webkit/MimeTypeMap;
    :cond_20
    :try_start_3
    const-string/jumbo v2, "text/plain"

    goto/16 :goto_7

    .line 1298
    :cond_21
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v30, :cond_22

    move-object/from16 v2, v30

    :goto_a
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_22
    const-string/jumbo v2, "text/plain"

    goto :goto_a

    .line 1307
    .restart local v18    # "e":Ljava/lang/Exception;
    :cond_23
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "text/plain"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 1312
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1326
    .end local v20    # "f":Ljava/io/File;
    .end local v21    # "fileName":Ljava/lang/String;
    .end local v23    # "idx":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v28    # "myMime":Landroid/webkit/MimeTypeMap;
    .end local v30    # "realMimeType":Ljava/lang/String;
    :cond_25
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v2

    if-nez v2, :cond_26

    .line 1327
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v9, v10}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    .line 1328
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_0

    .line 1330
    :cond_26
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1331
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_0

    .line 1334
    .end local v17    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1336
    :try_start_4
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v34, v0

    .line 1337
    .local v34, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    const/16 v26, 0x0

    .line 1338
    .local v26, "link":Ljava/lang/String;
    if-eqz v34, :cond_29

    move-object/from16 v0, v34

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v2, :cond_29

    .line 1339
    move-object/from16 v0, v34

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v2, :cond_28

    move-object/from16 v0, v34

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_28

    .line 1340
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1352
    .end local v26    # "link":Ljava/lang/String;
    .end local v34    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .end local p2    # "view":Landroid/view/View;
    :catch_2
    move-exception v18

    .line 1353
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1343
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v26    # "link":Ljava/lang/String;
    .restart local v34    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .restart local p2    # "view":Landroid/view/View;
    :cond_28
    :try_start_5
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1346
    :cond_29
    if-nez v26, :cond_2a

    .line 1347
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v26

    .line 1349
    :cond_2a
    if-eqz v26, :cond_0

    .line 1350
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0
.end method

.method private onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 12
    .param p1, "item"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "a"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1125
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1154
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    return v5

    .line 1128
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1129
    iget-object v7, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    aget-object v4, v7, v4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1131
    iget v4, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 1133
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v7

    iget v4, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1134
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v4, v6, v5}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 1135
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1136
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1138
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1139
    .local v3, "view2":Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 1140
    const-string/jumbo v4, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "i":I
    .end local v3    # "view2":Landroid/view/View;
    :cond_2
    move v4, v6

    .line 1129
    goto :goto_1

    .line 1133
    :cond_3
    const/16 v4, 0x8

    goto :goto_2

    .line 1142
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v2    # "i":I
    :cond_4
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1143
    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1144
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1145
    iput-boolean v5, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 1146
    instance-of v4, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v4, :cond_6

    .line 1147
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 1153
    :cond_5
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    move v5, v6

    .line 1154
    goto/16 :goto_0

    .line 1148
    .restart local p2    # "view":Landroid/view/View;
    :cond_6
    instance-of v4, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v4, :cond_7

    .line 1149
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, p3, v6, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_4

    .line 1150
    .restart local p2    # "view":Landroid/view/View;
    :cond_7
    instance-of v4, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v4, :cond_5

    .line 1151
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_4

    .line 1140
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 7
    .param p1, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 1477
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_width:I

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_height:I

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1478
    return-void
.end method

.method private processClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;)V
    .locals 22
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "message"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1377
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v3, :cond_1

    .line 1378
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 1379
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v4, v4, v5

    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    move/from16 v5, p1

    move-object/from16 v10, p0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 1474
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1380
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    .line 1381
    :cond_2
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_0

    move-object/from16 v11, p2

    .line 1382
    check-cast v11, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1383
    .local v11, "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1384
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1385
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v4, v4, v5

    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1389
    :cond_3
    const/4 v14, 0x0

    .line 1390
    .local v14, "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v15

    .line 1391
    .local v15, "fileName":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1392
    new-instance v14, Ljava/io/File;

    .end local v14    # "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1394
    .restart local v14    # "f":Ljava/io/File;
    :cond_4
    if-eqz v14, :cond_5

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1395
    :cond_5
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v14

    .line 1397
    :cond_6
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1398
    const/16 v20, 0x0

    .line 1400
    .local v20, "realMimeType":Ljava/lang/String;
    :try_start_0
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1401
    .local v17, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1402
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v19

    .line 1403
    .local v19, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v3, 0x2e

    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1404
    .local v16, "idx":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_8

    .line 1405
    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1406
    .local v13, "ext":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1407
    if-nez v20, :cond_8

    .line 1408
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1409
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 1410
    :cond_7
    const/16 v20, 0x0

    .line 1414
    .end local v13    # "ext":Ljava/lang/String;
    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_b

    .line 1415
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "org.telegram.multi.provider"

    invoke-static {v3, v4, v14}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v20, :cond_a

    move-object/from16 v3, v20

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1419
    :goto_3
    if-eqz v20, :cond_e

    .line 1421
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1422
    :catch_0
    move-exception v12

    .line 1423
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_d

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "org.telegram.multi.provider"

    invoke-static {v3, v4, v14}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1428
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1433
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "idx":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "myMime":Landroid/webkit/MimeTypeMap;
    :catch_1
    move-exception v12

    .line 1434
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1437
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1438
    .local v2, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07007d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1439
    const-string/jumbo v3, "OK"

    const v4, 0x7f0704f5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1440
    const-string/jumbo v3, "NoHandleAppInstalled"

    const v4, 0x7f070473

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1441
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1390
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v20    # "realMimeType":Ljava/lang/String;
    :cond_9
    const-string/jumbo v15, ""

    goto/16 :goto_1

    .line 1415
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "idx":I
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v19    # "myMime":Landroid/webkit/MimeTypeMap;
    .restart local v20    # "realMimeType":Ljava/lang/String;
    :cond_a
    :try_start_3
    const-string/jumbo v3, "text/plain"

    goto/16 :goto_2

    .line 1417
    :cond_b
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v20, :cond_c

    move-object/from16 v3, v20

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v3, "text/plain"

    goto :goto_5

    .line 1426
    .restart local v12    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 1431
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1444
    .end local v14    # "f":Ljava/io/File;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "idx":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "myMime":Landroid/webkit/MimeTypeMap;
    .end local v20    # "realMimeType":Ljava/lang/String;
    :cond_f
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1445
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    .line 1446
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_0

    .line 1448
    :cond_10
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1449
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_0

    .line 1452
    .end local v11    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1454
    :try_start_4
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v21, v0

    .line 1455
    .local v21, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    const/16 v18, 0x0

    .line 1456
    .local v18, "link":Ljava/lang/String;
    if-eqz v21, :cond_13

    move-object/from16 v0, v21

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v3, :cond_13

    .line 1457
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_12

    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v3, :cond_12

    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 1458
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1470
    .end local v18    # "link":Ljava/lang/String;
    .end local v21    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .end local p2    # "view":Landroid/view/View;
    :catch_2
    move-exception v12

    .line 1471
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1461
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v18    # "link":Ljava/lang/String;
    .restart local v21    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .restart local p2    # "view":Landroid/view/View;
    :cond_12
    :try_start_5
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1464
    :cond_13
    if-nez v18, :cond_14

    .line 1465
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v18

    .line 1467
    :cond_14
    if-eqz v18, :cond_0

    .line 1468
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0
.end method

.method private switchToCurrentSelectedMode()V
    .locals 9

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1020
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    if-eqz v0, :cond_4

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 1022
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v6, :cond_2

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1024
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    .line 1033
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoResult"

    const v2, 0x7f070483

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1122
    :cond_1
    :goto_1
    return-void

    .line 1025
    :cond_2
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v5, :cond_3

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1028
    :cond_3
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_0

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1030
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1039
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1040
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1041
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v0, :cond_7

    .line 1042
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "SharedMediaTitle"

    const v3, 0x7f070680

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f020266

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1045
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_5

    .line 1046
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoMediaSecret"

    const v3, 0x7f070479

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1059
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1048
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoMedia"

    const v3, 0x7f070476

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1056
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_3

    .line 1061
    :cond_7
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-eq v0, v6, :cond_8

    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_11

    .line 1062
    :cond_8
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v6, :cond_c

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "DocumentsTitle"

    const v3, 0x7f070233

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f020267

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1066
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_b

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedFilesSecret"

    const v3, 0x7f070487

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    :cond_9
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v3, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 1084
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v5, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v5, v6, :cond_f

    move v5, v6

    :goto_6
    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 1086
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1095
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1069
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedFiles"

    const v3, 0x7f070486

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1071
    :cond_c
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_9

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1073
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "AudioTitle"

    const v3, 0x7f0700bd

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f020269

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1075
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_d

    .line 1076
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedAudioSecret"

    const v3, 0x7f070485

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1078
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedAudio"

    const v3, 0x7f070484

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    move v0, v8

    .line 1081
    goto/16 :goto_5

    :cond_f
    move v5, v4

    .line 1084
    goto/16 :goto_6

    .line 1092
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_7

    .line 1096
    :cond_11
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v5, :cond_1

    .line 1097
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "LinksTitle"

    const v3, 0x7f0703e8

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f020268

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1100
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_13

    .line 1101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedLinksSecret"

    const v3, 0x7f070489

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v5

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    :goto_9
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1107
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 1108
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 1110
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1119
    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1103
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedLinks"

    const v3, 0x7f070488

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_14
    move v0, v8

    .line 1105
    goto/16 :goto_9

    .line 1116
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_a
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/MediaActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$1;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 478
    const/4 v14, 0x1

    .local v14, "a":I
    :goto_0
    if-ltz v14, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 478
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 481
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v19

    .line 485
    .local v19, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x0

    const v3, 0x7f0200c6

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/MediaActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$2;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v2

    const-string/jumbo v3, "Search"

    const v4, 0x7f07061c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 535
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    const-string/jumbo v4, "SharedMediaTitle"

    const v5, 0x7f070680

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    const-string/jumbo v4, "DocumentsTitle"

    const v5, 0x7f070233

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 539
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-eqz v2, :cond_6

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x5

    const-string/jumbo v4, "LinksTitle"

    const v5, 0x7f0703e8

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    const-string/jumbo v4, "AudioTitle"

    const v5, 0x7f0700bd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 548
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v11, 0x0

    const/4 v2, -0x2

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_7

    const/high16 v5, 0x42800000    # 64.0f

    :goto_2
    const/4 v6, 0x0

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v10, v11, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/MediaActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$3;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v3, "actionBarDefaultTitle"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "actionBarDefaultTitle"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 569
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x10

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v15

    .line 572
    .local v15, "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setBackgroundColor(I)V

    .line 573
    :cond_2
    new-instance v2, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_8

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    :goto_3
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$4;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x41

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v9, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-eqz v2, :cond_3

    .line 587
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 588
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/16 v3, 0x21

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v2, v15

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 591
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v2, v15

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 596
    .restart local v6    # "icon":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v3, 0x4

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v2, v15

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    .line 599
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    .line 600
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    .line 601
    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 602
    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 603
    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 604
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    .line 607
    new-instance v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .local v17, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    .line 609
    const/16 v21, -0x1

    .line 610
    .local v21, "scrollToPositionOnRecreate":I
    const/16 v20, 0x0

    .line 611
    .local v20, "scrollToOffsetOnRecreate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    if-eqz v2, :cond_4

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v21

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_a

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v18

    check-cast v18, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 615
    .local v18, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v18, :cond_9

    .line 616
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v20

    .line 625
    .end local v18    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_4
    :goto_4
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$5;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$6;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$7;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 696
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_5

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 700
    :cond_5
    const/4 v14, 0x0

    :goto_5
    const/4 v2, 0x6

    if-ge v14, v2, :cond_b

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 543
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v17    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v20    # "scrollToOffsetOnRecreate":I
    .end local v21    # "scrollToPositionOnRecreate":I
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    .line 544
    .local v16, "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-lt v2, v3, :cond_1

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    const-string/jumbo v4, "AudioTitle"

    const v5, 0x7f0700bd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_1

    .line 548
    .end local v16    # "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_7
    const/high16 v5, 0x42600000    # 56.0f

    goto/16 :goto_2

    .line 576
    .restart local v15    # "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_8
    const-string/jumbo v2, "actionBarActionModeDefaultIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    .line 618
    .restart local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v18    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .restart local v20    # "scrollToOffsetOnRecreate":I
    .restart local v21    # "scrollToPositionOnRecreate":I
    :cond_9
    const/16 v21, -0x1

    goto/16 :goto_4

    .line 621
    .end local v18    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_a
    const/16 v21, -0x1

    goto/16 :goto_4

    .line 704
    :cond_b
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_d

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/MediaActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$8;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 717
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteGrayText2"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x43000000    # 128.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_e

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V

    .line 739
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_c

    .line 740
    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v7, -0x1

    const/high16 v8, 0x421c0000    # 39.0f

    const/16 v9, 0x33

    const/4 v10, 0x0

    const/high16 v11, -0x3df00000    # -36.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 708
    :cond_d
    const-string/jumbo v2, "windowBackgroundGray"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_6

    .line 731
    :cond_e
    const-string/jumbo v2, "windowBackgroundGray"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_7
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 27
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 748
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_d

    .line 749
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 750
    .local v24, "uid":J
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 751
    .local v16, "guid":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    .line 752
    const/4 v2, 0x4

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 753
    .local v7, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v3, v2, v7

    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$2902(Lorg/telegram/ui/MediaActivity$SharedMediaData;I)I

    .line 755
    const/4 v2, 0x2

    aget-object v11, p2, v2

    check-cast v11, Ljava/util/ArrayList;

    .line 756
    .local v11, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-nez v2, :cond_0

    const/4 v15, 0x1

    .line 757
    .local v15, "enc":Z
    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v2, v24, v2

    if-nez v2, :cond_1

    const/16 v18, 0x0

    .line 758
    .local v18, "loadIndex":I
    :goto_1
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 759
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/messenger/MessageObject;

    .line 760
    .local v20, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v15}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    .line 758
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 756
    .end local v10    # "a":I
    .end local v15    # "enc":Z
    .end local v18    # "loadIndex":I
    .end local v20    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 757
    .restart local v15    # "enc":Z
    :cond_1
    const/16 v18, 0x1

    goto :goto_1

    .line 762
    .restart local v10    # "a":I
    .restart local v18    # "loadIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    const/4 v2, 0x5

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v3, v18

    .line 763
    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v2

    aget-boolean v2, v2, v18

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 765
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const/4 v4, 0x0

    const/16 v5, 0x32

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v6, v6, v7

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v6

    const/4 v8, 0x1

    aget v6, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 767
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_5

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 777
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 778
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v2, :cond_9

    if-nez v7, :cond_9

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_6

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 795
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 796
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 889
    .end local v7    # "type":I
    .end local v10    # "a":I
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v15    # "enc":Z
    .end local v16    # "guid":I
    .end local v18    # "loadIndex":I
    .end local v24    # "uid":J
    :cond_8
    :goto_5
    return-void

    .line 782
    .restart local v7    # "type":I
    .restart local v10    # "a":I
    .restart local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v15    # "enc":Z
    .restart local v16    # "guid":I
    .restart local v18    # "loadIndex":I
    .restart local v24    # "uid":J
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    if-ne v7, v2, :cond_a

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_6

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 786
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    const/4 v2, 0x3

    if-ne v7, v2, :cond_b

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_6

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 790
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    const/4 v2, 0x4

    if-ne v7, v2, :cond_6

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_6

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 796
    :cond_c
    const/16 v2, 0x8

    goto :goto_4

    .line 799
    .end local v7    # "type":I
    .end local v10    # "a":I
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v15    # "enc":Z
    .end local v16    # "guid":I
    .end local v18    # "loadIndex":I
    .end local v24    # "uid":J
    :cond_d
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1b

    .line 800
    const/4 v13, 0x0

    .line 801
    .local v13, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-gez v2, :cond_e

    .line 802
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v3, v4

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 804
    :cond_e
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 805
    .local v12, "channelId":I
    const/16 v18, 0x0

    .line 806
    .restart local v18    # "loadIndex":I
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 807
    if-nez v12, :cond_12

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    .line 808
    const/16 v18, 0x1

    .line 817
    :cond_f
    :goto_6
    const/4 v2, 0x0

    aget-object v19, p2, v2

    check-cast v19, Ljava/util/ArrayList;

    .line 818
    .local v19, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    .line 819
    .local v26, "updated":Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 820
    .local v17, "ids":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    array-length v5, v4

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v5, :cond_10

    aget-object v14, v4, v2

    .line 821
    .local v14, "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v0, v18

    invoke-virtual {v14, v6, v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->deleteMessage(II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 822
    const/16 v26, 0x1

    .line 820
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 809
    .end local v14    # "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .end local v17    # "ids":Ljava/lang/Integer;
    .end local v19    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "updated":Z
    :cond_12
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ne v12, v2, :cond_8

    .line 810
    const/16 v18, 0x0

    goto :goto_6

    .line 814
    :cond_13
    if-eqz v12, :cond_f

    goto/16 :goto_5

    .line 826
    .restart local v19    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v26    # "updated":Z
    :cond_14
    if-eqz v26, :cond_8

    .line 827
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_15

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 831
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_16

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 834
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_17

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 837
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_18

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 840
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 841
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1a
    const/16 v2, 0x8

    goto :goto_8

    .line 844
    .end local v12    # "channelId":I
    .end local v13    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "loadIndex":I
    .end local v19    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "updated":Z
    :cond_1b
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_26

    .line 845
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 846
    .restart local v24    # "uid":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v2, v24, v2

    if-nez v2, :cond_8

    .line 847
    const/4 v2, 0x1

    aget-object v11, p2, v2

    check-cast v11, Ljava/util/ArrayList;

    .line 848
    .restart local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-nez v2, :cond_1d

    const/4 v15, 0x1

    .line 849
    .restart local v15    # "enc":Z
    :goto_9
    const/16 v26, 0x0

    .line 850
    .restart local v26    # "updated":Z
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1f

    .line 851
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 852
    .local v23, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_1c

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->isSecretPhoto()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 850
    :cond_1c
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 848
    .end local v10    # "a":I
    .end local v15    # "enc":Z
    .end local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v26    # "updated":Z
    :cond_1d
    const/4 v15, 0x0

    goto :goto_9

    .line 855
    .restart local v10    # "a":I
    .restart local v15    # "enc":Z
    .restart local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    .restart local v26    # "updated":Z
    :cond_1e
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v7

    .line 856
    .restart local v7    # "type":I
    const/4 v2, -0x1

    if-eq v7, v2, :cond_8

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3, v15}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 860
    const/16 v26, 0x1

    goto :goto_b

    .line 863
    .end local v7    # "type":I
    .end local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_1f
    if-eqz v26, :cond_8

    .line 864
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_20

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 868
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_21

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 871
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_22

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 874
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_23

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 877
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 878
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_25

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto/16 :goto_5

    :cond_25
    const/16 v2, 0x8

    goto :goto_c

    .line 882
    .end local v10    # "a":I
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v15    # "enc":Z
    .end local v24    # "uid":J
    .end local v26    # "updated":Z
    :cond_26
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 883
    const/4 v2, 0x0

    aget-object v21, p2, v2

    check-cast v21, Ljava/lang/Integer;

    .line 884
    .local v21, "msgId":Ljava/lang/Integer;
    const/4 v2, 0x1

    aget-object v22, p2, v2

    check-cast v22, Ljava/lang/Integer;

    .line 885
    .local v22, "newMsgId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v4, :cond_8

    aget-object v14, v3, v2

    .line 886
    .restart local v14    # "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v14, v5, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->replaceMid(II)V

    .line 885
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 943
    if-eqz p1, :cond_0

    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v9, :cond_0

    iget v9, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-eqz v9, :cond_1

    .line 944
    :cond_0
    const/4 v7, 0x0

    .line 974
    :goto_0
    return-object v7

    .line 946
    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 948
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v3, :cond_6

    .line 949
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 950
    .local v8, "view":Landroid/view/View;
    instance-of v9, v8, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v9, :cond_2

    move-object v1, v8

    .line 951
    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 952
    .local v1, "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v9, 0x6

    if-ge v4, v9, :cond_2

    .line 953
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 954
    .local v6, "message":Lorg/telegram/messenger/MessageObject;
    if-nez v6, :cond_3

    .line 948
    .end local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .end local v4    # "i":I
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 957
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .restart local v4    # "i":I
    .restart local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_3
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getImageView(I)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    .line 958
    .local v5, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 959
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 960
    .local v2, "coords":[I
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 961
    new-instance v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v7}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 962
    .local v7, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v9, 0x0

    aget v9, v2, v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 963
    const/4 v9, 0x1

    aget v10, v2, v9

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v9, v11, :cond_4

    const/4 v9, 0x0

    :goto_3
    sub-int v9, v10, v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 964
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 965
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 966
    iget-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 967
    iget-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 968
    const/high16 v9, 0x42200000    # 40.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    goto :goto_0

    .line 963
    :cond_4
    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_3

    .line 952
    .end local v2    # "coords":[I
    .end local v7    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 974
    .end local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .end local v4    # "i":I
    .end local v5    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    .end local v8    # "view":Landroid/view/View;
    :cond_6
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 2200
    new-instance v9, Lorg/telegram/ui/MediaActivity$11;

    invoke-direct {v9, p0}, Lorg/telegram/ui/MediaActivity$11;-><init>(Lorg/telegram/ui/MediaActivity;)V

    .line 2212
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x35

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultTop"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSearch"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSearchPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "dateTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "progressView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "sharedMedia_startStopLoadIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusImageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "sharedMedia_startStopLoadIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "checkbox"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "checkboxCheck"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "thumbImageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "files_folderIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "extTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "files_iconText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "progressBar"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "progressCircle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "checkbox"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "checkboxCheck"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "titleTextPaint"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteLinkSelection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "letterDrawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "sharedMedia_linkPlaceholderText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "letterDrawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "sharedMedia_linkPlaceholder"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x2e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "checkbox"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "checkboxCheck"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x30

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "frameLayout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x31

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "playButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerPlayPause"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x32

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "titleTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerTitle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x33

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "frameLayout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerPerformer"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x34

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "closeButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerClose"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    return-object v10
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 979
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 994
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 917
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 918
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 919
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 920
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/MediaActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MediaActivity$9;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 929
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 230
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 231
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 232
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 233
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 234
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 235
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "dialog_id"

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    .line 236
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selected_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    .line 237
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    new-instance v1, Lorg/telegram/ui/MediaActivity$SharedMediaData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;-><init>(Lorg/telegram/ui/MediaActivity;Lorg/telegram/ui/MediaActivity$1;)V

    aput-object v1, v0, v8

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v4

    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    :goto_1
    aput v0, v1, v2

    .line 240
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    aput v1, v0, v6

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aput-boolean v2, v0, v6

    .line 237
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 239
    :cond_1
    const v0, 0x7fffffff

    goto :goto_1

    .line 245
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v2

    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 246
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 247
    return v6
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 253
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 254
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 255
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 256
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 257
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 893
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 897
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 901
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 906
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 909
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v0, :cond_2

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 912
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->fixLayoutInternal()V

    .line 913
    return-void
.end method

.method public scaleToFill()Z
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 1003
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 2
    .param p1, "chatInfo"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 1009
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    .line 1013
    :cond_0
    return-void
.end method

.method public setMergeDialogId(J)V
    .locals 1
    .param p1, "did"    # J

    .prologue
    .line 1016
    iput-wide p1, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    .line 1017
    return-void
.end method

.method public setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 997
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 934
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 0

    .prologue
    .line 991
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 988
    return-void
.end method
