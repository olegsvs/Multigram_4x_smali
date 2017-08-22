.class public Lorg/telegram/ui/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LaunchActivity$VcardData;
    }
.end annotation


# static fields
.field private static final callsRow:I = 0xa

.field private static final channelRow:I = 0xc

.field private static final chatsStatsRow:I = 0xe

.field private static final communityRow:I = 0xd

.field private static final faqRow:I = 0x10

.field private static final inviteFriendsRow:I = 0x11

.field private static layerFragmentsStack:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static mainFragmentsStack:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static final plusSettingsRow:I = 0xb

.field private static rightFragmentsStack:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static final settingsRow:I = 0x9

.field private static final themesRow:I = 0x7

.field private static final themingRow:I = 0x8

.field private static final versionRow:I = 0xf


# instance fields
.field private actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private backgroundTablet:Landroid/view/View;

.field private contactsRow:I

.field private contactsToSend:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private currentConnectionState:I

.field private documentsMimeType:Ljava/lang/String;

.field private documentsOriginalPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private documentsPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private documentsUrisArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

.field protected drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private englishLocaleStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Z

.field private id:I

.field private layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private loadingLocaleDialog:Z

.field private localeDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private lockRunnable:Ljava/lang/Runnable;

.field private mToast:Landroid/widget/Toast;

.field private msg:Ljava/lang/String;

.field private msg1:Ljava/lang/String;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private pass:Z

.field private passcodeSaveIntent:Landroid/content/Intent;

.field private passcodeSaveIntentIsNew:Z

.field private passcodeSaveIntentIsRestore:Z

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field private photoPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private sendingText:Ljava/lang/String;

.field private shadowTablet:Landroid/widget/FrameLayout;

.field private shadowTabletSide:Landroid/widget/FrameLayout;

.field private sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

.field private stat:I

.field private systemLocaleStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tabletFullSize:Z

.field private time:J

.field private videoPath:Ljava/lang/String;

.field private visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->rightFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 151
    const/4 v0, 0x6

    iput v0, p0, Lorg/telegram/ui/LaunchActivity;->contactsRow:I

    .line 799
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/LaunchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LaunchActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LaunchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LaunchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;ZZZ)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Ljava/lang/Integer;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # [Ljava/lang/String;
    .param p11, "x11"    # I

    .prologue
    .line 109
    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->localeDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->localeDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/LaunchActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/LaunchActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/LaunchActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/telegram/ui/LaunchActivity;->time:J

    return-wide v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/LaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/LaunchActivity;->stat:I

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->msg1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lorg/telegram/ui/LaunchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/telegram/ui/LaunchActivity;->id:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "x2"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LaunchActivity;->showLanguageAlertInternal(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/LaunchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    return-void
.end method

.method static synthetic access$3100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LaunchActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/LaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/ui/LaunchActivity;->contactsRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LaunchActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/LaunchActivity;->showLanguageAlert(Z)V

    return-void
.end method

.method private checkLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 677
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v2, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_9

    .line 682
    :cond_2
    iput-boolean v4, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    .line 683
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v6, :cond_5

    .line 684
    const/4 v0, 0x1

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 685
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 686
    .local v1, "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 687
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatActivity;->setIgnoreAttachOnPause(Z)V

    .line 689
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 690
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 691
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    add-int/lit8 v0, v0, -0x1

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 694
    .end local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 695
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 696
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 699
    .end local v0    # "a":I
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 700
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 701
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 699
    goto :goto_2

    :cond_7
    move v2, v3

    .line 700
    goto :goto_3

    :cond_8
    move v4, v3

    .line 701
    goto :goto_4

    .line 703
    :cond_9
    iput-boolean v5, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    .line 704
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 705
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 706
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 707
    .restart local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_a

    move-object v2, v1

    .line 708
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatActivity;->setIgnoreAttachOnPause(Z)V

    .line 710
    :cond_a
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 711
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 712
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v0, v0, -0x1

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 715
    .end local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_c

    .line 716
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 719
    .end local v0    # "a":I
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 720
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 721
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    move v3, v4

    goto :goto_6
.end method

.method private getName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 2520
    if-nez p1, :cond_0

    .line 2521
    const-string/jumbo v0, ""

    .line 2528
    :goto_0
    return-object v0

    .line 2523
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2524
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    goto :goto_0

    .line 2525
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2526
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_0

    .line 2528
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "intKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2532
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2533
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2534
    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2536
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getTitle(J)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # J

    .prologue
    .line 2499
    long-to-int v1, p1

    .line 2500
    .local v1, "lower_id":I
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 2501
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 2502
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v2, :cond_2

    .line 2503
    invoke-direct {p0, v2}, Lorg/telegram/ui/LaunchActivity;->getName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 2516
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    return-object v3

    .line 2506
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2507
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_1

    .line 2508
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    .line 2510
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2511
    if-eqz v0, :cond_2

    .line 2512
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    .line 2516
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;ZZZ)Z
    .locals 79
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isNew"    # Z
    .param p3, "restore"    # Z
    .param p4, "fromPassword"    # Z

    .prologue
    .line 805
    invoke-static/range {p0 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->handleProxyIntent(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 806
    const/16 v56, 0x1

    .line 1451
    :goto_0
    return v56

    .line 808
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v40

    .line 809
    .local v40, "flags":I
    if-nez p4, :cond_2

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v4, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v4, :cond_2

    .line 810
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    .line 811
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    .line 812
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z

    .line 813
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z

    .line 814
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1451
    const/16 v56, 0x0

    goto :goto_0

    .line 816
    :cond_2
    const/16 v56, 0x0

    .line 818
    .local v56, "pushOpened":Z
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    .line 819
    .local v60, "push_user_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    .line 820
    .local v57, "push_chat_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    .line 821
    .local v58, "push_enc_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    .line 822
    .local v59, "push_msg_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 823
    .local v48, "open_settings":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    .line 824
    .local v47, "open_new_dialog":Ljava/lang/Integer;
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v15, "dialogId"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 825
    .local v34, "dialogId":J
    :goto_1
    const/16 v64, 0x0

    .line 826
    .local v64, "showDialogsList":Z
    const/16 v65, 0x0

    .line 828
    .local v65, "showPlayer":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 829
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    .line 830
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 831
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 832
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 833
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    .line 834
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 835
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    .line 837
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-eqz v4, :cond_e

    const/high16 v4, 0x100000

    and-int v4, v4, v40

    if-nez v4, :cond_e

    .line 838
    if-eqz p1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    if-nez p3, :cond_e

    .line 839
    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 840
    const/16 v39, 0x0

    .line 841
    .local v39, "error":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v70

    .line 842
    .local v70, "type":Ljava/lang/String;
    if-eqz v70, :cond_1a

    const-string/jumbo v4, "text/x-vcard"

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 844
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v15, "android.intent.extra.STREAM"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Landroid/net/Uri;

    .line 845
    .local v71, "uri":Landroid/net/Uri;
    if-eqz v71, :cond_19

    .line 846
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    .line 847
    .local v29, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, v29

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v66

    .line 848
    .local v66, "stream":Ljava/io/InputStream;
    new-instance v78, Ljava/util/ArrayList;

    invoke-direct/range {v78 .. v78}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v78, "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    const/16 v30, 0x0

    .line 851
    .local v30, "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    new-instance v25, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v15, "UTF-8"

    move-object/from16 v0, v66

    invoke-direct {v4, v0, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 853
    .local v25, "bufferedReader":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v43

    .local v43, "line":Ljava/lang/String;
    if-eqz v43, :cond_16

    .line 854
    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 855
    const-string/jumbo v4, ":"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 856
    .local v22, "args":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v4, v0

    const/4 v15, 0x2

    if-ne v4, v15, :cond_3

    .line 859
    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, "BEGIN"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    aget-object v4, v22, v4

    const-string/jumbo v15, "VCARD"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 860
    new-instance v30, Lorg/telegram/ui/LaunchActivity$VcardData;

    .end local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    const/4 v4, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/LaunchActivity$VcardData;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/LaunchActivity$1;)V

    .restart local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    move-object/from16 v0, v78

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_4
    :goto_3
    if-eqz v30, :cond_3

    .line 867
    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, "FN"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, "ORG"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 868
    :cond_5
    const/16 v46, 0x0

    .line 869
    .local v46, "nameEncoding":Ljava/lang/String;
    const/16 v45, 0x0

    .line 870
    .local v45, "nameCharset":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, ";"

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v51

    .line 871
    .local v51, "params":[Ljava/lang/String;
    move-object/from16 v0, v51

    array-length v15, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v15, :cond_b

    aget-object v50, v51, v4

    .line 872
    .local v50, "param":Ljava/lang/String;
    const-string/jumbo v16, "="

    move-object/from16 v0, v50

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 873
    .local v23, "args2":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 871
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 824
    .end local v22    # "args":[Ljava/lang/String;
    .end local v23    # "args2":[Ljava/lang/String;
    .end local v25    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v29    # "cr":Landroid/content/ContentResolver;
    .end local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v34    # "dialogId":J
    .end local v39    # "error":Z
    .end local v43    # "line":Ljava/lang/String;
    .end local v45    # "nameCharset":Ljava/lang/String;
    .end local v46    # "nameEncoding":Ljava/lang/String;
    .end local v50    # "param":Ljava/lang/String;
    .end local v51    # "params":[Ljava/lang/String;
    .end local v64    # "showDialogsList":Z
    .end local v65    # "showPlayer":Z
    .end local v66    # "stream":Ljava/io/InputStream;
    .end local v70    # "type":Ljava/lang/String;
    .end local v71    # "uri":Landroid/net/Uri;
    .end local v78    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_7
    const-wide/16 v34, 0x0

    goto/16 :goto_1

    .line 861
    .restart local v22    # "args":[Ljava/lang/String;
    .restart local v25    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v29    # "cr":Landroid/content/ContentResolver;
    .restart local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .restart local v34    # "dialogId":J
    .restart local v39    # "error":Z
    .restart local v43    # "line":Ljava/lang/String;
    .restart local v64    # "showDialogsList":Z
    .restart local v65    # "showPlayer":Z
    .restart local v66    # "stream":Ljava/io/InputStream;
    .restart local v70    # "type":Ljava/lang/String;
    .restart local v71    # "uri":Landroid/net/Uri;
    .restart local v78    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_8
    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, "END"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    aget-object v4, v22, v4

    const-string/jumbo v15, "VCARD"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 862
    const/16 v30, 0x0

    goto :goto_3

    .line 876
    .restart local v23    # "args2":[Ljava/lang/String;
    .restart local v45    # "nameCharset":Ljava/lang/String;
    .restart local v46    # "nameEncoding":Ljava/lang/String;
    .restart local v50    # "param":Ljava/lang/String;
    .restart local v51    # "params":[Ljava/lang/String;
    :cond_9
    const/16 v16, 0x0

    aget-object v16, v23, v16

    const-string/jumbo v17, "CHARSET"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 877
    const/16 v16, 0x1

    aget-object v45, v23, v16

    goto :goto_5

    .line 878
    :cond_a
    const/16 v16, 0x0

    aget-object v16, v23, v16

    const-string/jumbo v17, "ENCODING"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 879
    const/16 v16, 0x1

    aget-object v46, v23, v16

    goto :goto_5

    .line 882
    .end local v23    # "args2":[Ljava/lang/String;
    .end local v50    # "param":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x1

    aget-object v4, v22, v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    .line 883
    if-eqz v46, :cond_3

    const-string/jumbo v4, "QUOTED-PRINTABLE"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 884
    :goto_6
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    const-string/jumbo v15, "="

    invoke-virtual {v4, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v46, :cond_c

    .line 885
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    .line 886
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v43

    .line 887
    if-nez v43, :cond_14

    .line 892
    :cond_c
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v26

    .line 893
    .local v26, "bytes":[B
    if-eqz v26, :cond_3

    move-object/from16 v0, v26

    array-length v4, v0

    if-eqz v4, :cond_3

    .line 894
    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 895
    .local v33, "decodedName":Ljava/lang/String;
    if-eqz v33, :cond_3

    .line 896
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 934
    .end local v22    # "args":[Ljava/lang/String;
    .end local v25    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v26    # "bytes":[B
    .end local v29    # "cr":Landroid/content/ContentResolver;
    .end local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v33    # "decodedName":Ljava/lang/String;
    .end local v43    # "line":Ljava/lang/String;
    .end local v45    # "nameCharset":Ljava/lang/String;
    .end local v46    # "nameEncoding":Ljava/lang/String;
    .end local v51    # "params":[Ljava/lang/String;
    .end local v66    # "stream":Ljava/io/InputStream;
    .end local v71    # "uri":Landroid/net/Uri;
    .end local v78    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :catch_0
    move-exception v37

    .line 935
    .local v37, "e":Ljava/lang/Exception;
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 936
    const/16 v39, 0x1

    .line 1004
    .end local v37    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_7
    if-eqz v39, :cond_e

    .line 1005
    const-string/jumbo v4, "Unsupported content"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1280
    .end local v39    # "error":Z
    .end local v70    # "type":Ljava/lang/String;
    :cond_e
    :goto_8
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6b

    .line 1281
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1282
    .local v22, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "user_id"

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1283
    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_f

    .line 1284
    const-string/jumbo v4, "message_id"

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1285
    :cond_f
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v15, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1286
    :cond_10
    new-instance v41, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1287
    .local v41, "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v4, v0, v15, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1288
    const/16 v56, 0x1

    .line 1413
    .end local v22    # "args":Landroid/os/Bundle;
    .end local v41    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_11
    :goto_9
    if-nez v56, :cond_13

    if-nez p2, :cond_13

    .line 1414
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 1415
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_89

    .line 1416
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v15, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v15}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {v4, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1418
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1441
    :cond_12
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1442
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1443
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1444
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1448
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 890
    .local v22, "args":[Ljava/lang/String;
    .restart local v25    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v29    # "cr":Landroid/content/ContentResolver;
    .restart local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .restart local v39    # "error":Z
    .restart local v43    # "line":Ljava/lang/String;
    .restart local v45    # "nameCharset":Ljava/lang/String;
    .restart local v46    # "nameEncoding":Ljava/lang/String;
    .restart local v51    # "params":[Ljava/lang/String;
    .restart local v66    # "stream":Ljava/io/InputStream;
    .restart local v70    # "type":Ljava/lang/String;
    .restart local v71    # "uri":Landroid/net/Uri;
    .restart local v78    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_14
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    goto/16 :goto_6

    .line 900
    .end local v45    # "nameCharset":Ljava/lang/String;
    .end local v46    # "nameEncoding":Ljava/lang/String;
    .end local v51    # "params":[Ljava/lang/String;
    :cond_15
    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, "TEL"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 901
    const/4 v4, 0x1

    aget-object v4, v22, v4

    const/4 v15, 0x1

    invoke-static {v4, v15}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v54

    .line 902
    .local v54, "phone":Ljava/lang/String;
    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 903
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 908
    .end local v22    # "args":[Ljava/lang/String;
    .end local v54    # "phone":Ljava/lang/String;
    :cond_16
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->close()V

    .line 909
    invoke-virtual/range {v66 .. v66}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 913
    :goto_b
    const/16 v21, 0x0

    .local v21, "a":I
    :goto_c
    :try_start_3
    invoke-virtual/range {v78 .. v78}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_d

    .line 914
    move-object/from16 v0, v78

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lorg/telegram/ui/LaunchActivity$VcardData;

    .line 915
    .local v77, "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    move-object/from16 v0, v77

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    if-eqz v4, :cond_18

    move-object/from16 v0, v77

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    .line 916
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-nez v4, :cond_17

    .line 917
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    .line 920
    :cond_17
    const/16 v24, 0x0

    .local v24, "b":I
    :goto_d
    move-object/from16 v0, v77

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_18

    .line 921
    move-object/from16 v0, v77

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/String;

    .line 922
    .restart local v54    # "phone":Ljava/lang/String;
    new-instance v74, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct/range {v74 .. v74}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 923
    .local v74, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v54

    move-object/from16 v1, v74

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 924
    move-object/from16 v0, v77

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    move-object/from16 v0, v74

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 925
    const-string/jumbo v4, ""

    move-object/from16 v0, v74

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 926
    const/4 v4, 0x0

    move-object/from16 v0, v74

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 910
    .end local v21    # "a":I
    .end local v24    # "b":I
    .end local v54    # "phone":Ljava/lang/String;
    .end local v74    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v77    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    :catch_1
    move-exception v37

    .line 911
    .restart local v37    # "e":Ljava/lang/Exception;
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    .line 913
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v21    # "a":I
    .restart local v77    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    :cond_18
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 932
    .end local v21    # "a":I
    .end local v25    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v29    # "cr":Landroid/content/ContentResolver;
    .end local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v43    # "line":Ljava/lang/String;
    .end local v66    # "stream":Ljava/io/InputStream;
    .end local v77    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v78    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_19
    const/16 v39, 0x1

    goto/16 :goto_7

    .line 939
    .end local v71    # "uri":Landroid/net/Uri;
    :cond_1a
    const-string/jumbo v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 940
    .local v68, "text":Ljava/lang/String;
    if-nez v68, :cond_1b

    .line 941
    const-string/jumbo v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v69

    .line 942
    .local v69, "textSequence":Ljava/lang/CharSequence;
    if-eqz v69, :cond_1b

    .line 943
    invoke-interface/range {v69 .. v69}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v68

    .line 946
    .end local v69    # "textSequence":Ljava/lang/CharSequence;
    :cond_1b
    const-string/jumbo v4, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 948
    .local v67, "subject":Ljava/lang/String;
    if-eqz v68, :cond_24

    invoke-virtual/range {v68 .. v68}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_24

    .line 949
    const-string/jumbo v4, "http://"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string/jumbo v4, "https://"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    if-eqz v67, :cond_1d

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 950
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "\n"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    .line 952
    :cond_1d
    move-object/from16 v0, v68

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 957
    :cond_1e
    :goto_e
    const-string/jumbo v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v52

    .line 958
    .local v52, "parcelable":Landroid/os/Parcelable;
    if-eqz v52, :cond_2b

    .line 960
    move-object/from16 v0, v52

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_1f

    .line 961
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v52

    :cond_1f
    move-object/from16 v71, v52

    .line 963
    check-cast v71, Landroid/net/Uri;

    .line 964
    .restart local v71    # "uri":Landroid/net/Uri;
    if-eqz v71, :cond_20

    .line 965
    invoke-static/range {v71 .. v71}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 966
    const/16 v39, 0x1

    .line 969
    :cond_20
    if-nez v39, :cond_d

    .line 970
    if-eqz v71, :cond_25

    if-eqz v70, :cond_21

    const-string/jumbo v4, "image/"

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    :cond_21
    invoke-virtual/range {v71 .. v71}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v4, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 971
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_23

    .line 972
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 974
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 953
    .end local v52    # "parcelable":Landroid/os/Parcelable;
    .end local v71    # "uri":Landroid/net/Uri;
    :cond_24
    if-eqz v67, :cond_1e

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1e

    .line 954
    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    goto :goto_e

    .line 976
    .restart local v52    # "parcelable":Landroid/os/Parcelable;
    .restart local v71    # "uri":Landroid/net/Uri;
    :cond_25
    invoke-static/range {v71 .. v71}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v53

    .line 977
    .local v53, "path":Ljava/lang/String;
    if-eqz v53, :cond_29

    .line 978
    const-string/jumbo v4, "file:"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 979
    const-string/jumbo v4, "file://"

    const-string/jumbo v15, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v53

    .line 981
    :cond_26
    if-eqz v70, :cond_27

    const-string/jumbo v4, "video/"

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 982
    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    goto/16 :goto_7

    .line 984
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_28

    .line 985
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 986
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 988
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    invoke-virtual/range {v71 .. v71}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 992
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-nez v4, :cond_2a

    .line 993
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 995
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    goto/16 :goto_7

    .line 1000
    .end local v53    # "path":Ljava/lang/String;
    .end local v71    # "uri":Landroid/net/Uri;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-nez v4, :cond_d

    .line 1001
    const/16 v39, 0x1

    goto/16 :goto_7

    .line 1007
    .end local v39    # "error":Z
    .end local v52    # "parcelable":Landroid/os/Parcelable;
    .end local v67    # "subject":Ljava/lang/String;
    .end local v68    # "text":Ljava/lang/String;
    .end local v70    # "type":Ljava/lang/String;
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1008
    const/16 v39, 0x0

    .line 1010
    .restart local v39    # "error":Z
    :try_start_4
    const-string/jumbo v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v72

    .line 1011
    .local v72, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v70

    .line 1012
    .restart local v70    # "type":Ljava/lang/String;
    if-eqz v72, :cond_30

    .line 1013
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_f
    invoke-virtual/range {v72 .. v72}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_2f

    .line 1014
    move-object/from16 v0, v72

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/os/Parcelable;

    .line 1015
    .restart local v52    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v52

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_2d

    .line 1016
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v52

    .line 1018
    :cond_2d
    move-object/from16 v0, v52

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v71, v0

    .line 1019
    .restart local v71    # "uri":Landroid/net/Uri;
    if-eqz v71, :cond_2e

    .line 1020
    invoke-static/range {v71 .. v71}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1021
    move-object/from16 v0, v72

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1022
    add-int/lit8 v21, v21, -0x1

    .line 1013
    :cond_2e
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 1026
    .end local v52    # "parcelable":Landroid/os/Parcelable;
    .end local v71    # "uri":Landroid/net/Uri;
    :cond_2f
    invoke-virtual/range {v72 .. v72}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1027
    const/16 v72, 0x0

    .line 1030
    .end local v21    # "a":I
    :cond_30
    if-eqz v72, :cond_3b

    .line 1031
    if-eqz v70, :cond_33

    const-string/jumbo v4, "image/"

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1032
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_10
    invoke-virtual/range {v72 .. v72}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_3a

    .line 1033
    move-object/from16 v0, v72

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/os/Parcelable;

    .line 1034
    .restart local v52    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v52

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_31

    .line 1035
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v52

    .line 1037
    :cond_31
    move-object/from16 v0, v52

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v71, v0

    .line 1038
    .restart local v71    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_32

    .line 1039
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 1041
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 1044
    .end local v21    # "a":I
    .end local v52    # "parcelable":Landroid/os/Parcelable;
    .end local v71    # "uri":Landroid/net/Uri;
    :cond_33
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_11
    invoke-virtual/range {v72 .. v72}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_3a

    .line 1045
    move-object/from16 v0, v72

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/os/Parcelable;

    .line 1046
    .restart local v52    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v52

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_34

    .line 1047
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v52

    .line 1049
    :cond_34
    move-object/from16 v0, v52

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v71, v0

    .line 1050
    .restart local v71    # "uri":Landroid/net/Uri;
    invoke-static/range {v71 .. v71}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v53

    .line 1051
    .restart local v53    # "path":Ljava/lang/String;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v49

    .line 1052
    .local v49, "originalPath":Ljava/lang/String;
    if-nez v49, :cond_35

    .line 1053
    move-object/from16 v49, v53

    .line 1055
    :cond_35
    if-eqz v53, :cond_38

    .line 1056
    const-string/jumbo v4, "file:"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1057
    const-string/jumbo v4, "file://"

    const-string/jumbo v15, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v53

    .line 1059
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_37

    .line 1060
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 1061
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 1063
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    :goto_12
    add-int/lit8 v21, v21, 0x1

    goto :goto_11

    .line 1066
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-nez v4, :cond_39

    .line 1067
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 1069
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_12

    .line 1077
    .end local v21    # "a":I
    .end local v49    # "originalPath":Ljava/lang/String;
    .end local v52    # "parcelable":Landroid/os/Parcelable;
    .end local v53    # "path":Ljava/lang/String;
    .end local v70    # "type":Ljava/lang/String;
    .end local v71    # "uri":Landroid/net/Uri;
    .end local v72    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :catch_2
    move-exception v37

    .line 1078
    .restart local v37    # "e":Ljava/lang/Exception;
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1079
    const/16 v39, 0x1

    .line 1081
    .end local v37    # "e":Ljava/lang/Exception;
    :cond_3a
    :goto_13
    if-eqz v39, :cond_e

    .line 1082
    const-string/jumbo v4, "Unsupported content"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 1075
    .restart local v70    # "type":Ljava/lang/String;
    .restart local v72    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_3b
    const/16 v39, 0x1

    goto :goto_13

    .line 1084
    .end local v39    # "error":Z
    .end local v70    # "type":Ljava/lang/String;
    .end local v72    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_3c
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1085
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v32

    .line 1086
    .local v32, "data":Landroid/net/Uri;
    if-eqz v32, :cond_e

    .line 1087
    const/4 v5, 0x0

    .line 1088
    .local v5, "username":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1089
    .local v6, "group":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1090
    .local v7, "sticker":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1091
    .local v14, "instantView":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1092
    .local v8, "botUser":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1093
    .local v9, "botChat":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1094
    .local v10, "message":Ljava/lang/String;
    const/16 v54, 0x0

    .line 1095
    .restart local v54    # "phone":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1096
    .local v13, "game":Ljava/lang/String;
    const/16 v55, 0x0

    .line 1097
    .local v55, "phoneHash":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1098
    .local v12, "messageId":Ljava/lang/Integer;
    const/4 v11, 0x0

    .line 1099
    .local v11, "hasUrl":Z
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v62

    .line 1100
    .local v62, "scheme":Ljava/lang/String;
    if-eqz v62, :cond_3f

    .line 1101
    const-string/jumbo v4, "http"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    const-string/jumbo v4, "https"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1102
    :cond_3d
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v42

    .line 1103
    .local v42, "host":Ljava/lang/String;
    const-string/jumbo v4, "telegram.me"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "t.me"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "telegram.dog"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "telesco.pe"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1104
    :cond_3e
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v53

    .line 1105
    .restart local v53    # "path":Ljava/lang/String;
    if-eqz v53, :cond_3f

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v15, 0x1

    if-le v4, v15, :cond_3f

    .line 1106
    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    .line 1107
    const-string/jumbo v4, "joinchat/"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1108
    const-string/jumbo v4, "joinchat/"

    const-string/jumbo v15, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1223
    .end local v42    # "host":Ljava/lang/String;
    .end local v53    # "path":Ljava/lang/String;
    :cond_3f
    :goto_14
    if-eqz v10, :cond_40

    const-string/jumbo v4, "@"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1226
    :cond_40
    if-nez v54, :cond_41

    if-eqz v55, :cond_60

    .line 1227
    :cond_41
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1228
    .local v22, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "phone"

    move-object/from16 v0, v22

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    new-instance v4, Lorg/telegram/ui/LaunchActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/LaunchActivity$7;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/os/Bundle;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 1109
    .end local v22    # "args":Landroid/os/Bundle;
    .restart local v42    # "host":Ljava/lang/String;
    .restart local v53    # "path":Ljava/lang/String;
    :cond_42
    const-string/jumbo v4, "addstickers/"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1110
    const-string/jumbo v4, "addstickers/"

    const-string/jumbo v15, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    .line 1111
    :cond_43
    const-string/jumbo v4, "iv/"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1112
    const/4 v4, 0x0

    const-string/jumbo v15, "url"

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    .line 1113
    const/4 v4, 0x1

    const-string/jumbo v15, "rhash"

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    .line 1114
    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1115
    :cond_44
    const/4 v14, 0x0

    goto/16 :goto_14

    .line 1117
    :cond_45
    const-string/jumbo v4, "msg/"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    const-string/jumbo v4, "share/"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1118
    :cond_46
    const-string/jumbo v4, "url"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1119
    if-nez v10, :cond_47

    .line 1120
    const-string/jumbo v10, ""

    .line 1122
    :cond_47
    const-string/jumbo v4, "text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 1123
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_48

    .line 1124
    const/4 v11, 0x1

    .line 1125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "\n"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1127
    :cond_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1129
    :cond_49
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v15, 0x4000

    if-le v4, v15, :cond_4a

    .line 1130
    const/4 v4, 0x0

    const/16 v15, 0x4000

    invoke-virtual {v10, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1132
    :cond_4a
    :goto_15
    const-string/jumbo v4, "\n"

    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1133
    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_15

    .line 1135
    :cond_4b
    const-string/jumbo v4, "confirmphone"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1136
    const-string/jumbo v4, "phone"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1137
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_14

    .line 1138
    :cond_4c
    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v15, 0x1

    if-lt v4, v15, :cond_3f

    .line 1139
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v63

    .line 1140
    .local v63, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v63 .. v63}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4d

    .line 1141
    const/4 v4, 0x0

    move-object/from16 v0, v63

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "username":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1142
    .restart local v5    # "username":Ljava/lang/String;
    invoke-interface/range {v63 .. v63}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x1

    if-le v4, v15, :cond_4d

    .line 1143
    const/4 v4, 0x1

    move-object/from16 v0, v63

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1144
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4d

    .line 1145
    const/4 v12, 0x0

    .line 1149
    :cond_4d
    const-string/jumbo v4, "start"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1150
    const-string/jumbo v4, "startgroup"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1151
    const-string/jumbo v4, "game"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_14

    .line 1155
    .end local v42    # "host":Ljava/lang/String;
    .end local v53    # "path":Ljava/lang/String;
    .end local v63    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4e
    const-string/jumbo v4, "tg"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1156
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v73

    .line 1157
    .local v73, "url":Ljava/lang/String;
    const-string/jumbo v4, "tg:resolve"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    const-string/jumbo v4, "tg://resolve"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1158
    :cond_4f
    const-string/jumbo v4, "tg:resolve"

    const-string/jumbo v15, "tg://telegram.org"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg://resolve"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v73

    .line 1159
    invoke-static/range {v73 .. v73}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 1160
    const-string/jumbo v4, "domain"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1161
    const-string/jumbo v4, "start"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1162
    const-string/jumbo v4, "startgroup"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1163
    const-string/jumbo v4, "game"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1164
    const-string/jumbo v4, "post"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1165
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3f

    .line 1166
    const/4 v12, 0x0

    goto/16 :goto_14

    .line 1168
    :cond_50
    const-string/jumbo v4, "tg:join"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string/jumbo v4, "tg://join"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1169
    :cond_51
    const-string/jumbo v4, "tg:join"

    const-string/jumbo v15, "tg://telegram.org"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg://join"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v73

    .line 1170
    invoke-static/range {v73 .. v73}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 1171
    const-string/jumbo v4, "invite"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_14

    .line 1172
    :cond_52
    const-string/jumbo v4, "tg:addstickers"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_53

    const-string/jumbo v4, "tg://addstickers"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1173
    :cond_53
    const-string/jumbo v4, "tg:addstickers"

    const-string/jumbo v15, "tg://telegram.org"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg://addstickers"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v73

    .line 1174
    invoke-static/range {v73 .. v73}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 1175
    const-string/jumbo v4, "set"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_14

    .line 1176
    :cond_54
    const-string/jumbo v4, "tg:msg"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string/jumbo v4, "tg://msg"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string/jumbo v4, "tg://share"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string/jumbo v4, "tg:share"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1177
    :cond_55
    const-string/jumbo v4, "tg:msg"

    const-string/jumbo v15, "tg://telegram.org"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg://msg"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg://share"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg:share"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v73

    .line 1178
    invoke-static/range {v73 .. v73}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 1179
    const-string/jumbo v4, "url"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1180
    if-nez v10, :cond_56

    .line 1181
    const-string/jumbo v10, ""

    .line 1183
    :cond_56
    const-string/jumbo v4, "text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 1184
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_57

    .line 1185
    const/4 v11, 0x1

    .line 1186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "\n"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1188
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1190
    :cond_58
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v15, 0x4000

    if-le v4, v15, :cond_59

    .line 1191
    const/4 v4, 0x0

    const/16 v15, 0x4000

    invoke-virtual {v10, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1193
    :cond_59
    :goto_16
    const-string/jumbo v4, "\n"

    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1194
    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_16

    .line 1196
    :cond_5a
    const-string/jumbo v4, "tg:confirmphone"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5b

    const-string/jumbo v4, "tg://confirmphone"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1197
    :cond_5b
    const-string/jumbo v4, "phone"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1198
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_14

    .line 1199
    :cond_5c
    const-string/jumbo v4, "tg:openmessage"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string/jumbo v4, "tg://openmessage"

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1200
    :cond_5d
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 1201
    .local v75, "userID":Ljava/lang/String;
    const-string/jumbo v4, "chat_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1202
    .local v27, "chatID":Ljava/lang/String;
    const-string/jumbo v4, "message_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1203
    .local v44, "msgID":Ljava/lang/String;
    if-eqz v75, :cond_5f

    .line 1205
    :try_start_5
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v60

    .line 1214
    :cond_5e
    :goto_17
    if-eqz v44, :cond_3f

    .line 1216
    :try_start_6
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v59

    goto/16 :goto_14

    .line 1208
    :cond_5f
    if-eqz v27, :cond_5e

    .line 1210
    :try_start_7
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v57

    goto :goto_17

    .line 1236
    .end local v27    # "chatID":Ljava/lang/String;
    .end local v44    # "msgID":Ljava/lang/String;
    .end local v73    # "url":Ljava/lang/String;
    .end local v75    # "userID":Ljava/lang/String;
    :cond_60
    if-nez v5, :cond_61

    if-nez v6, :cond_61

    if-nez v7, :cond_61

    if-nez v10, :cond_61

    if-nez v13, :cond_61

    if-eqz v14, :cond_62

    .line 1237
    :cond_61
    const/4 v15, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v15}, Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 1240
    :cond_62
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 1241
    .local v31, "cursor":Landroid/database/Cursor;
    if-eqz v31, :cond_e

    .line 1242
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 1243
    const-string/jumbo v4, "DATA4"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v76

    .line 1244
    .local v76, "userId":I
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v15, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1245
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    .line 1247
    .end local v76    # "userId":I
    :cond_63
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_8

    .line 1249
    .end local v31    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v37

    .line 1250
    .restart local v37    # "e":Ljava/lang/Exception;
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1254
    .end local v5    # "username":Ljava/lang/String;
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "sticker":Ljava/lang/String;
    .end local v8    # "botUser":Ljava/lang/String;
    .end local v9    # "botChat":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "hasUrl":Z
    .end local v12    # "messageId":Ljava/lang/Integer;
    .end local v13    # "game":Ljava/lang/String;
    .end local v14    # "instantView":[Ljava/lang/String;
    .end local v32    # "data":Landroid/net/Uri;
    .end local v37    # "e":Ljava/lang/Exception;
    .end local v54    # "phone":Ljava/lang/String;
    .end local v55    # "phoneHash":Ljava/lang/String;
    .end local v62    # "scheme":Ljava/lang/String;
    :cond_64
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "org.telegram.multi.OPEN_ACCOUNT"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1255
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    goto/16 :goto_8

    .line 1256
    :cond_65
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "new_dialog"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1257
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    goto/16 :goto_8

    .line 1258
    :cond_66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "com.tmessages.openchat"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1259
    const-string/jumbo v4, "chatId"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 1260
    .local v28, "chatId":I
    const-string/jumbo v4, "userId"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v76

    .line 1261
    .restart local v76    # "userId":I
    const-string/jumbo v4, "encId"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 1262
    .local v38, "encId":I
    if-eqz v28, :cond_67

    .line 1263
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v15, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1264
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    goto/16 :goto_8

    .line 1265
    :cond_67
    if-eqz v76, :cond_68

    .line 1266
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v15, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1267
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    goto/16 :goto_8

    .line 1268
    :cond_68
    if-eqz v38, :cond_69

    .line 1269
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v15, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1270
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    goto/16 :goto_8

    .line 1272
    :cond_69
    const/16 v64, 0x1

    goto/16 :goto_8

    .line 1274
    .end local v28    # "chatId":I
    .end local v38    # "encId":I
    .end local v76    # "userId":I
    :cond_6a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "com.tmessages.openplayer"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1275
    const/16 v65, 0x1

    goto/16 :goto_8

    .line 1291
    :cond_6b
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6e

    .line 1292
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1293
    .restart local v22    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "chat_id"

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1294
    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6c

    .line 1295
    const-string/jumbo v4, "message_id"

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1296
    :cond_6c
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6d

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v15, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1297
    :cond_6d
    new-instance v41, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1298
    .restart local v41    # "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v4, v0, v15, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1299
    const/16 v56, 0x1

    goto/16 :goto_9

    .line 1302
    .end local v22    # "args":Landroid/os/Bundle;
    .end local v41    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_6e
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6f

    .line 1303
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1304
    .restart local v22    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "enc_id"

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1305
    new-instance v41, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1306
    .restart local v41    # "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v4, v0, v15, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1307
    const/16 v56, 0x1

    goto/16 :goto_9

    .line 1309
    .end local v22    # "args":Landroid/os/Bundle;
    .end local v41    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_6f
    if-eqz v64, :cond_73

    .line 1310
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_71

    .line 1311
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 1321
    :cond_70
    :goto_18
    const/16 v56, 0x0

    .line 1322
    const/16 p2, 0x0

    goto/16 :goto_9

    .line 1313
    :cond_71
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_70

    .line 1314
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_72

    .line 1315
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v15, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1316
    add-int/lit8 v21, v21, -0x1

    .line 1314
    add-int/lit8 v21, v21, 0x1

    goto :goto_19

    .line 1318
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_18

    .line 1323
    .end local v21    # "a":I
    :cond_73
    if-eqz v65, :cond_79

    .line 1324
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1325
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_74

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1327
    .local v41, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, v41

    instance-of v4, v0, Lorg/telegram/ui/AudioPlayerActivity;

    if-eqz v4, :cond_75

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1332
    .end local v41    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_74
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1333
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1334
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1345
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v15, Lorg/telegram/ui/AudioPlayerActivity;

    invoke-direct {v15}, Lorg/telegram/ui/AudioPlayerActivity;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v4, v15, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1346
    const/16 v56, 0x1

    goto/16 :goto_9

    .line 1325
    .restart local v41    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_75
    add-int/lit8 v21, v21, 0x1

    goto :goto_1a

    .line 1336
    .end local v21    # "a":I
    .end local v41    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_76
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_77

    .line 1337
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1338
    .restart local v41    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, v41

    instance-of v4, v0, Lorg/telegram/ui/AudioPlayerActivity;

    if-eqz v4, :cond_78

    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1343
    .end local v41    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_77
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_1b

    .line 1336
    .restart local v41    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_78
    add-int/lit8 v21, v21, 0x1

    goto :goto_1c

    .line 1347
    .end local v21    # "a":I
    .end local v41    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_79
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-nez v4, :cond_7a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_7a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-nez v4, :cond_7a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_7a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-nez v4, :cond_7a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-eqz v4, :cond_85

    .line 1348
    :cond_7a
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_7b

    .line 1349
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v15, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1351
    :cond_7b
    const-wide/16 v16, 0x0

    cmp-long v4, v34, v16

    if-nez v4, :cond_84

    .line 1352
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1353
    .restart local v22    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "onlySelect"

    const/4 v15, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-eqz v4, :cond_7d

    .line 1355
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v15, "SendContactTo"

    const v16, 0x7f07064c

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string/jumbo v4, "selectAlertStringGroup"

    const-string/jumbo v15, "SendContactToGroup"

    const v16, 0x7f070641

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    :goto_1d
    new-instance v41, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1362
    .local v41, "fragment":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1364
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 1365
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v15, v15, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_7e

    const/16 v61, 0x1

    .line 1369
    .local v61, "removeLast":Z
    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v61

    move/from16 v2, v16

    invoke-virtual {v4, v0, v1, v15, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1370
    const/16 v56, 0x1

    .line 1371
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1372
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    .line 1379
    :cond_7c
    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1380
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 1381
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1382
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto/16 :goto_9

    .line 1358
    .end local v41    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v61    # "removeLast":Z
    :cond_7d
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v15, "SendMessagesTo"

    const v16, 0x7f07064c

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const-string/jumbo v4, "selectAlertStringGroup"

    const-string/jumbo v15, "SendMessagesToGroup"

    const v16, 0x7f07064d

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 1365
    .restart local v41    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_7e
    const/16 v61, 0x0

    goto :goto_1e

    .line 1367
    :cond_7f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v15, 0x1

    if-le v4, v15, :cond_80

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v15, v15, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_80

    const/16 v61, 0x1

    .restart local v61    # "removeLast":Z
    :goto_20
    goto/16 :goto_1e

    .end local v61    # "removeLast":Z
    :cond_80
    const/16 v61, 0x0

    goto :goto_20

    .line 1373
    .restart local v61    # "removeLast":Z
    :cond_81
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 1374
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_1f

    .line 1375
    :cond_82
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 1376
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto/16 :goto_1f

    .line 1384
    :cond_83
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_9

    .line 1387
    .end local v22    # "args":Landroid/os/Bundle;
    .end local v41    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v61    # "removeLast":Z
    :cond_84
    const/4 v4, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v4, v1, v2, v15}, Lorg/telegram/ui/LaunchActivity;->didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V

    goto/16 :goto_9

    .line 1389
    :cond_85
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_87

    .line 1390
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v15, Lorg/telegram/ui/SettingsActivity;

    invoke-direct {v15}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v4, v15, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1391
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 1392
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1393
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1394
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1398
    :goto_21
    const/16 v56, 0x1

    goto/16 :goto_9

    .line 1396
    :cond_86
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_21

    .line 1399
    :cond_87
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_11

    .line 1400
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1401
    .restart local v22    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "destroyAfterSelect"

    const/4 v15, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v15, Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v4, v15, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1403
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1404
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1405
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1406
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1410
    :goto_22
    const/16 v56, 0x1

    goto/16 :goto_9

    .line 1408
    :cond_88
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_22

    .line 1421
    .end local v22    # "args":Landroid/os/Bundle;
    :cond_89
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1422
    new-instance v36, Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1423
    .local v36, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1425
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1429
    .end local v36    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_8a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1430
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_8b

    .line 1431
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v15, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v15}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {v4, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1432
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1434
    :cond_8b
    new-instance v36, Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1435
    .restart local v36    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1437
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1217
    .end local v36    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    .restart local v5    # "username":Ljava/lang/String;
    .restart local v6    # "group":Ljava/lang/String;
    .restart local v7    # "sticker":Ljava/lang/String;
    .restart local v8    # "botUser":Ljava/lang/String;
    .restart local v9    # "botChat":Ljava/lang/String;
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v11    # "hasUrl":Z
    .restart local v12    # "messageId":Ljava/lang/Integer;
    .restart local v13    # "game":Ljava/lang/String;
    .restart local v14    # "instantView":[Ljava/lang/String;
    .restart local v27    # "chatID":Ljava/lang/String;
    .restart local v32    # "data":Landroid/net/Uri;
    .restart local v44    # "msgID":Ljava/lang/String;
    .restart local v54    # "phone":Ljava/lang/String;
    .restart local v55    # "phoneHash":Ljava/lang/String;
    .restart local v62    # "scheme":Ljava/lang/String;
    .restart local v73    # "url":Ljava/lang/String;
    .restart local v75    # "userID":Ljava/lang/String;
    :catch_4
    move-exception v4

    goto/16 :goto_14

    .line 1211
    :catch_5
    move-exception v4

    goto/16 :goto_17

    .line 1206
    :catch_6
    move-exception v4

    goto/16 :goto_17
.end method

.method private onFinish()V
    .locals 2

    .prologue
    .line 1928
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->finished:Z

    if-eqz v0, :cond_0

    .line 1949
    :goto_0
    return-void

    .line 1931
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->finished:Z

    .line 1932
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1933
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1934
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 1936
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1937
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1938
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1939
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1940
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1941
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1942
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1943
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1944
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1945
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1947
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->showStatusNotifications:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private onPasscodePause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 2702
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2703
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2704
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2706
    :cond_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2707
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    sput v0, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 2708
    new-instance v0, Lorg/telegram/ui/LaunchActivity$25;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$25;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2722
    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v0, :cond_2

    .line 2723
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2730
    :cond_1
    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2731
    return-void

    .line 2724
    :cond_2
    sget v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-eqz v0, :cond_1

    .line 2725
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 2728
    :cond_3
    sput v6, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    goto :goto_0
.end method

.method private onPasscodeResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2734
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2736
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2738
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2739
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    .line 2741
    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v0, :cond_2

    .line 2742
    sput v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 2743
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2745
    :cond_2
    return-void
.end method

.method private runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 21
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "sticker"    # Ljava/lang/String;
    .param p4, "botUser"    # Ljava/lang/String;
    .param p5, "botChat"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "hasUrl"    # Z
    .param p8, "messageId"    # Ljava/lang/Integer;
    .param p9, "game"    # Ljava/lang/String;
    .param p10, "instantView"    # [Ljava/lang/String;
    .param p11, "state"    # I

    .prologue
    .line 1455
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1456
    .local v5, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f0703eb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1457
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1458
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 1459
    const/16 v19, 0x0

    .line 1461
    .local v19, "requestId":I
    if-eqz p1, :cond_2

    .line 1462
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 1463
    .local v17, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 1464
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v3, Lorg/telegram/ui/LaunchActivity$8;

    move-object/from16 v4, p0

    move-object/from16 v6, p9

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/LaunchActivity$8;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v19

    .line 1784
    .end local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    :cond_0
    :goto_0
    if-eqz v19, :cond_1

    .line 1785
    move/from16 v18, v19

    .line 1786
    .local v18, "reqId":I
    const/4 v3, -0x2

    const-string/jumbo v4, "Cancel"

    const v6, 0x7f070105

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/LaunchActivity$12;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LaunchActivity$12;-><init>(Lorg/telegram/ui/LaunchActivity;I)V

    invoke-virtual {v5, v3, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1797
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1799
    .end local v18    # "reqId":I
    :cond_1
    :goto_1
    return-void

    .line 1615
    :cond_2
    if-eqz p2, :cond_4

    .line 1616
    if-nez p11, :cond_3

    .line 1617
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;-><init>()V

    .line 1618
    .local v17, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;->hash:Ljava/lang/String;

    .line 1619
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v20

    new-instance v3, Lorg/telegram/ui/LaunchActivity$9;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v3 .. v15}, Lorg/telegram/ui/LaunchActivity$9;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v19

    .line 1683
    goto :goto_0

    .end local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p11

    if-ne v0, v3, :cond_0

    .line 1684
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 1685
    .local v17, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 1686
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LaunchActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/LaunchActivity$10;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    const/4 v6, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1739
    .end local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;
    :cond_4
    if-eqz p3, :cond_5

    .line 1740
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1741
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 1742
    .local v9, "stickerset":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;
    move-object/from16 v0, p3

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;->short_name:Ljava/lang/String;

    .line 1743
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1744
    .local v8, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    new-instance v6, Lorg/telegram/ui/Components/StickersAlert;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1747
    .end local v8    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v9    # "stickerset":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;
    :cond_5
    if-eqz p6, :cond_6

    .line 1748
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 1749
    .local v16, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "onlySelect"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1750
    new-instance v8, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1751
    .local v8, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v3, Lorg/telegram/ui/LaunchActivity$11;

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p6

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$11;-><init>(Lorg/telegram/ui/LaunchActivity;ZLjava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1779
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_0

    .line 1780
    .end local v8    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v16    # "args":Landroid/os/Bundle;
    :cond_6
    if-eqz p10, :cond_0

    goto/16 :goto_0
.end method

.method private showLanguageAlert(Z)V
    .locals 12
    .param p1, "force"    # Z

    .prologue
    .line 2607
    :try_start_0
    iget-boolean v9, p0, Lorg/telegram/ui/LaunchActivity;->loadingLocaleDialog:Z

    if-eqz v9, :cond_1

    .line 2699
    :cond_0
    :goto_0
    return-void

    .line 2610
    :cond_1
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2611
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "language_showed2"

    const-string/jumbo v10, ""

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2612
    .local v7, "showedLang":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 2613
    .local v8, "systemLang":Ljava/lang/String;
    if-nez p1, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2617
    :cond_2
    const/4 v9, 0x2

    new-array v4, v9, [Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2618
    .local v4, "infos":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v1, v9, v10

    .line 2619
    .local v1, "arg":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_6

    .line 2620
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2621
    .local v3, "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v9, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "en"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2622
    const/4 v9, 0x0

    aput-object v3, v4, v9

    .line 2624
    :cond_3
    iget-object v9, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "_"

    const-string/jumbo v11, "-"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2625
    :cond_4
    const/4 v9, 0x1

    aput-object v3, v4, v9

    .line 2627
    :cond_5
    const/4 v9, 0x0

    aget-object v9, v4, v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    if-eqz v9, :cond_8

    .line 2631
    .end local v3    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_6
    const/4 v9, 0x0

    aget-object v9, v4, v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    aget-object v9, v4, v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    aget-object v9, v4, v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    if-eq v9, v10, :cond_0

    .line 2635
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    .line 2636
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;

    .line 2637
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/LaunchActivity;->loadingLocaleDialog:Z

    .line 2639
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;-><init>()V

    .line 2640
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "_"

    const-string/jumbo v11, "-"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->lang_code:Ljava/lang/String;

    .line 2641
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "English"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChooseYourLanguage"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2643
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChooseYourLanguageOther"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2644
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChangeLanguageLater"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2645
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/LaunchActivity$23;

    invoke-direct {v10, p0, v4, v8}, Lorg/telegram/ui/LaunchActivity$23;-><init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V

    const/16 v11, 0x8

    invoke-virtual {v9, v6, v10, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 2668
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;

    .end local v6    # "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;-><init>()V

    .line 2669
    .restart local v6    # "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "_"

    const-string/jumbo v11, "-"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->lang_code:Ljava/lang/String;

    .line 2670
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "English"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2671
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChooseYourLanguage"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2672
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChooseYourLanguageOther"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2673
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChangeLanguageLater"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/LaunchActivity$24;

    invoke-direct {v10, p0, v4, v8}, Lorg/telegram/ui/LaunchActivity$24;-><init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V

    const/16 v11, 0x8

    invoke-virtual {v9, v6, v10, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2696
    .end local v0    # "a":I
    .end local v1    # "arg":Ljava/lang/String;
    .end local v4    # "infos":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    .end local v6    # "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;
    .end local v7    # "showedLang":Ljava/lang/String;
    .end local v8    # "systemLang":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2697
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "infos":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .restart local v5    # "preferences":Landroid/content/SharedPreferences;
    .restart local v7    # "showedLang":Ljava/lang/String;
    .restart local v8    # "systemLang":Ljava/lang/String;
    :cond_7
    move-object v1, v8

    .line 2618
    goto/16 :goto_1

    .line 2619
    .restart local v0    # "a":I
    .restart local v1    # "arg":Ljava/lang/String;
    .restart local v3    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method private showLanguageAlertInternal(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V
    .locals 16
    .param p1, "systemInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "englishInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p3, "systemLang"    # Ljava/lang/String;

    .prologue
    .line 2541
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/LaunchActivity;->loadingLocaleDialog:Z

    .line 2542
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    if-nez v12, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/LocaleController;->isCurrentLocalLocale()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 2543
    .local v7, "firstSystem":Z
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2544
    .local v2, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    const-string/jumbo v13, "ChooseYourLanguage"

    const v14, 0x7f07018e

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2545
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;

    const-string/jumbo v13, "ChooseYourLanguage"

    const v14, 0x7f07018e

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2546
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2547
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2548
    const/4 v12, 0x2

    new-array v4, v12, [Lorg/telegram/ui/Cells/LanguageCell;

    .line 2549
    .local v4, "cells":[Lorg/telegram/ui/Cells/LanguageCell;
    const/4 v12, 0x1

    new-array v11, v12, [Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2550
    .local v11, "selectedLanguage":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const/4 v12, 0x2

    new-array v9, v12, [Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2551
    .local v9, "locales":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    const-string/jumbo v13, "English"

    const v14, 0x7f070274

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 2552
    .local v6, "englishName":Ljava/lang/String;
    const/4 v13, 0x0

    if-eqz v7, :cond_2

    move-object/from16 v12, p1

    :goto_1
    aput-object v12, v9, v13

    .line 2553
    const/4 v13, 0x1

    if-eqz v7, :cond_3

    move-object/from16 v12, p2

    :goto_2
    aput-object v12, v9, v13

    .line 2554
    const/4 v12, 0x0

    if-eqz v7, :cond_4

    .end local p1    # "systemInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :goto_3
    aput-object p1, v11, v12

    .line 2556
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_4
    const/4 v12, 0x2

    if-ge v1, v12, :cond_7

    .line 2557
    new-instance v12, Lorg/telegram/ui/Cells/LanguageCell;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lorg/telegram/ui/Cells/LanguageCell;-><init>(Landroid/content/Context;Z)V

    aput-object v12, v4, v1

    .line 2558
    aget-object v13, v4, v1

    aget-object v14, v9, v1

    aget-object v12, v9, v1

    move-object/from16 v0, p2

    if-ne v12, v0, :cond_5

    move-object v12, v6

    :goto_5
    const/4 v15, 0x1

    invoke-virtual {v13, v14, v12, v15}, Lorg/telegram/ui/Cells/LanguageCell;->setLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;Z)V

    .line 2559
    aget-object v12, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Cells/LanguageCell;->setTag(Ljava/lang/Object;)V

    .line 2560
    aget-object v12, v4, v1

    const-string/jumbo v13, "dialogButtonSelector"

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Cells/LanguageCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2561
    aget-object v13, v4, v1

    if-nez v1, :cond_6

    const/4 v12, 0x1

    :goto_6
    invoke-virtual {v13, v12}, Lorg/telegram/ui/Cells/LanguageCell;->setLanguageSelected(Z)V

    .line 2562
    aget-object v12, v4, v1

    const/4 v13, -0x1

    const/16 v14, 0x30

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2563
    aget-object v12, v4, v1

    new-instance v13, Lorg/telegram/ui/LaunchActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v4}, Lorg/telegram/ui/LaunchActivity$20;-><init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;[Lorg/telegram/ui/Cells/LanguageCell;)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Cells/LanguageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2556
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2542
    .end local v1    # "a":I
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v4    # "cells":[Lorg/telegram/ui/Cells/LanguageCell;
    .end local v6    # "englishName":Ljava/lang/String;
    .end local v7    # "firstSystem":Z
    .end local v8    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v9    # "locales":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v11    # "selectedLanguage":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .restart local p1    # "systemInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .restart local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .restart local v4    # "cells":[Lorg/telegram/ui/Cells/LanguageCell;
    .restart local v6    # "englishName":Ljava/lang/String;
    .restart local v7    # "firstSystem":Z
    .restart local v8    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v9    # "locales":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .restart local v11    # "selectedLanguage":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_2
    move-object/from16 v12, p2

    .line 2552
    goto :goto_1

    :cond_3
    move-object/from16 v12, p1

    .line 2553
    goto :goto_2

    :cond_4
    move-object/from16 p1, p2

    .line 2554
    goto :goto_3

    .line 2558
    .end local p1    # "systemInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .restart local v1    # "a":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 2561
    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    .line 2574
    :cond_7
    new-instance v3, Lorg/telegram/ui/Cells/LanguageCell;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lorg/telegram/ui/Cells/LanguageCell;-><init>(Landroid/content/Context;Z)V

    .line 2575
    .local v3, "cell":Lorg/telegram/ui/Cells/LanguageCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    const-string/jumbo v13, "ChooseYourLanguageOther"

    const v14, 0x7f07018f

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;

    const-string/jumbo v14, "ChooseYourLanguageOther"

    const v15, 0x7f07018f

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/telegram/ui/Cells/LanguageCell;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    new-instance v12, Lorg/telegram/ui/LaunchActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/LaunchActivity$21;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Cells/LanguageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2588
    const/4 v12, -0x1

    const/16 v13, 0x30

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2589
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2590
    const-string/jumbo v12, "OK"

    const v13, 0x7f0704f5

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/LaunchActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lorg/telegram/ui/LaunchActivity$22;-><init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    invoke-virtual {v2, v12, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2597
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LaunchActivity;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/LaunchActivity;->localeDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2598
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2599
    .local v10, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string/jumbo v13, "language_showed2"

    move-object/from16 v0, p3

    invoke-interface {v12, v13, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2603
    .end local v1    # "a":I
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v3    # "cell":Lorg/telegram/ui/Cells/LanguageCell;
    .end local v4    # "cells":[Lorg/telegram/ui/Cells/LanguageCell;
    .end local v6    # "englishName":Ljava/lang/String;
    .end local v7    # "firstSystem":Z
    .end local v8    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v9    # "locales":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    .end local v11    # "selectedLanguage":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :goto_7
    return-void

    .line 2600
    :catch_0
    move-exception v5

    .line 2601
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private showPasscodeActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-nez v0, :cond_0

    .line 797
    :goto_0
    return-void

    .line 770
    :cond_0
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 771
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    .line 778
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onShow()V

    .line 779
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$6;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V

    goto :goto_0

    .line 773
    :cond_2
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_1

    .line 775
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 27
    .param p1, "uid"    # I

    .prologue
    .line 2364
    const/16 v23, 0x0

    :try_start_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->stat:I

    .line 2365
    if-nez p1, :cond_8

    .line 2366
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2367
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_1

    .line 2496
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 2370
    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    :cond_1
    const-string/jumbo v20, ""

    .line 2371
    .local v20, "title":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 2372
    .local v11, "entry":Ljava/util/Map$Entry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2373
    .local v14, "key":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/ui/LaunchActivity;->getTitle(J)Ljava/lang/String;

    move-result-object v20

    .line 2374
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2375
    .local v9, "cs":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->stat:I

    .line 2376
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 2377
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "entry":Ljava/util/Map$Entry;
    check-cast v11, Ljava/util/Map$Entry;

    .line 2378
    .restart local v11    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2379
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/ui/LaunchActivity;->getTitle(J)Ljava/lang/String;

    move-result-object v20

    .line 2380
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2424
    .end local v11    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    .end local v14    # "key":J
    .end local v20    # "title":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 2431
    :cond_3
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    .line 2435
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    .line 2436
    sget-boolean v23, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationToBottom:Z

    if-eqz v23, :cond_e

    const/16 v7, 0x50

    .line 2437
    .local v7, "TB":I
    :goto_2
    sget v23, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPosition:I

    if-nez v23, :cond_f

    const/4 v6, 0x3

    .line 2438
    .local v6, "LCR":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    or-int v24, v7, v6

    const/16 v25, 0x0

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPadding:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    invoke-virtual/range {v23 .. v26}, Landroid/widget/Toast;->setGravity(III)V

    .line 2439
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 2440
    .local v12, "group":Landroid/view/ViewGroup;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2441
    const/high16 v23, 0x3f800000    # 1.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2442
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 2443
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2444
    .local v21, "tv":Landroid/widget/TextView;
    const/16 v23, 0x1

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationSize:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2445
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2446
    const/high16 v23, 0x3f800000    # 1.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2450
    .end local v21    # "tv":Landroid/widget/TextView;
    :cond_4
    new-instance v17, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2451
    .local v17, "shape":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v23, 0x40800000    # 4.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2452
    const/high16 v23, -0x78000000

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2453
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2456
    .end local v6    # "LCR":I
    .end local v7    # "TB":I
    .end local v12    # "group":Landroid/view/ViewGroup;
    .end local v17    # "shape":Landroid/graphics/drawable/GradientDrawable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 2462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/LaunchActivity;->time:J

    .line 2463
    new-instance v23, Lorg/telegram/ui/LaunchActivity$19;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$19;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    const-wide/16 v24, 0xbb8

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2492
    .end local v9    # "cs":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 2493
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "tmessages"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2382
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "cs":Ljava/lang/String;
    .restart local v11    # "entry":Ljava/util/Map$Entry;
    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    .restart local v14    # "key":J
    .restart local v20    # "title":Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg1:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg1:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 2385
    :cond_7
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/telegram/ui/LaunchActivity;->msg1:Ljava/lang/String;

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 2387
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 2391
    .end local v9    # "cs":Ljava/lang/String;
    .end local v11    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    .end local v14    # "key":J
    .end local v20    # "title":Ljava/lang/String;
    :cond_8
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->stat:I

    .line 2392
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 2393
    .local v22, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v22, :cond_0

    .line 2397
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 2398
    sget-boolean v23, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlyIfContactFav:Z

    if-eqz v23, :cond_9

    .line 2399
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v23

    if-nez v23, :cond_9

    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v23

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/Favorite;->isFavorite(Ljava/lang/Long;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 2402
    :cond_9
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "\\s"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2403
    .local v16, "name":[Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    const/16 v23, 0x0

    aget-object v8, v16, v23

    .line 2404
    .local v8, "c":Ljava/lang/CharSequence;
    :goto_4
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v23

    const/16 v24, 0x1a

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x1a

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v8, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2405
    :cond_a
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 2412
    .local v18, "t":J
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStatusOffline;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    sget-boolean v23, Lorg/telegram/ui/ActionBar/Theme;->plusShowOfflineToast:Z

    if-eqz v23, :cond_d

    .line 2413
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "Offline"

    const v25, 0x7f0704f8

    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2419
    .restart local v9    # "cs":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/LaunchActivity;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_b

    .line 2420
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2422
    :cond_b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->id:I

    goto/16 :goto_1

    .line 2403
    .end local v8    # "c":Ljava/lang/CharSequence;
    .end local v9    # "cs":Ljava/lang/String;
    .end local v18    # "t":J
    :cond_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 2414
    .restart local v8    # "c":Ljava/lang/CharSequence;
    .restart local v18    # "t":J
    :cond_d
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStatusOnline;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    const-wide/16 v24, -0x12c

    cmp-long v23, v18, v24

    if-gtz v23, :cond_0

    sget-boolean v23, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlineToast:Z

    if-eqz v23, :cond_0

    .line 2415
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "Online"

    const v25, 0x7f0704f9

    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "cs":Ljava/lang/String;
    goto/16 :goto_5

    .line 2436
    .end local v8    # "c":Ljava/lang/CharSequence;
    .end local v16    # "name":[Ljava/lang/CharSequence;
    .end local v18    # "t":J
    .end local v22    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_e
    const/16 v7, 0x30

    goto/16 :goto_2

    .line 2437
    .restart local v7    # "TB":I
    :cond_f
    sget v23, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPosition:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    const/16 v6, 0x11

    goto/16 :goto_3

    :cond_10
    const/4 v6, 0x5

    goto/16 :goto_3
.end method

.method private updateCurrentConnectionState()V
    .locals 5

    .prologue
    .line 2748
    const/4 v2, 0x0

    .line 2749
    .local v2, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2750
    .local v1, "subtitle":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2751
    .local v0, "action":Ljava/lang/Runnable;
    iget v3, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2752
    const-string/jumbo v3, "WaitingForNetwork"

    const v4, 0x7f07076c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2801
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setTitleOverlayText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2802
    return-void

    .line 2753
    :cond_1
    iget v3, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2754
    const-string/jumbo v3, "Connecting"

    const v4, 0x7f0701b2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2755
    new-instance v0, Lorg/telegram/ui/LaunchActivity$26;

    .end local v0    # "action":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$26;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    .restart local v0    # "action":Ljava/lang/Runnable;
    goto :goto_0

    .line 2770
    :cond_2
    iget v3, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 2771
    const-string/jumbo v3, "Updating"

    const v4, 0x7f07070c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2772
    :cond_3
    iget v3, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 2773
    const-string/jumbo v3, "ConnectingToProxy"

    const v4, 0x7f0701b3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2774
    const-string/jumbo v3, "ConnectingToProxyTapToDisable"

    const v4, 0x7f0701b7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2775
    new-instance v0, Lorg/telegram/ui/LaunchActivity$27;

    .end local v0    # "action":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$27;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    .restart local v0    # "action":Ljava/lang/Runnable;
    goto :goto_0
.end method

.method private verifyLogin(Landroid/content/SharedPreferences;)V
    .locals 13
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 726
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 727
    .local v6, "id":Ljava/lang/String;
    const/4 v1, 0x0

    .line 729
    .local v1, "code":I
    :try_start_0
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 730
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    iget v9, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit8 v1, v9, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string/jumbo v9, "code"

    const/4 v10, -0x1

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 735
    .local v8, "version":I
    const-string/jumbo v9, "did"

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, "did":Ljava/lang/String;
    const-string/jumbo v9, "mode"

    const/4 v10, -0x1

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 738
    .local v2, "currentMode":I
    const-string/jumbo v9, "auid"

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "auid":Ljava/lang/String;
    const/4 v9, -0x1

    if-eq v2, v9, :cond_1

    const/4 v9, 0x1

    if-lt v2, v9, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 741
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 742
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "auid"

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 743
    const-string/jumbo v9, "iuid"

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 744
    const-string/jumbo v9, "mode"

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 745
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 746
    const-string/jumbo v9, "did"

    invoke-interface {v5, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 748
    :cond_2
    if-eq v8, v1, :cond_3

    .line 749
    const-string/jumbo v9, "code"

    invoke-interface {v5, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 751
    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 753
    sget-object v9, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    sget-object v10, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG_SECRET:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {p0, v9, v10, v11, v12}, Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 754
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-static {p0, v9}, Lnet/hockeyapp/android/LoginManager;->verifyLogin(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 758
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    const/4 v9, 0x2

    if-ne v2, v9, :cond_5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v0, :cond_5

    .line 759
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 760
    .restart local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "pass"

    const/4 v10, 0x1

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 761
    const-string/jumbo v9, "code"

    invoke-interface {v5, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 762
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 763
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/LaunchActivity;->pass:Z

    .line 765
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    return-void

    .line 731
    .end local v0    # "auid":Ljava/lang/String;
    .end local v2    # "currentMode":I
    .end local v3    # "did":Ljava/lang/String;
    .end local v8    # "version":I
    :catch_0
    move-exception v4

    .line 732
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2231
    sget v8, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v8, :cond_6

    .line 2232
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    if-eqz v8, :cond_0

    .line 2233
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    .line 2235
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2236
    .local v3, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_0

    .line 2238
    .end local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2239
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2240
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2241
    .restart local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_1

    .line 2243
    .end local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2244
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2245
    .restart local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_2

    .line 2247
    .end local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2249
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lorg/telegram/ui/IntroActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2250
    .local v4, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 2251
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2252
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2359
    .end local v4    # "intent2":Landroid/content/Intent;
    :cond_5
    :goto_3
    return-void

    .line 2253
    :cond_6
    sget v8, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    if-ne p1, v8, :cond_7

    .line 2254
    aget-object v8, p2, v9

    if-eq v8, p0, :cond_5

    .line 2255
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2256
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_3

    .line 2258
    :cond_7
    sget v8, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    if-ne p1, v8, :cond_8

    .line 2259
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v6

    .line 2260
    .local v6, "state":I
    iget v8, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    if-eq v8, v6, :cond_5

    .line 2261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "switch to state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2262
    iput v6, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    .line 2263
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->updateCurrentConnectionState()V

    goto :goto_3

    .line 2265
    .end local v6    # "state":I
    :cond_8
    sget v8, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    if-ne p1, v8, :cond_9

    .line 2266
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 2267
    :cond_9
    sget v8, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    if-ne p1, v8, :cond_e

    .line 2268
    aget-object v5, p2, v9

    check-cast v5, Ljava/lang/Integer;

    .line 2269
    .local v5, "reason":Ljava/lang/Integer;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2270
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v8, "AppName"

    const v9, 0x7f07007d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2271
    const-string/jumbo v8, "OK"

    const v9, 0x7f0704f5

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2272
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v12, :cond_a

    .line 2273
    const-string/jumbo v8, "MoreInfo"

    const v9, 0x7f070447

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/LaunchActivity$17;

    invoke-direct {v9, p0}, Lorg/telegram/ui/LaunchActivity$17;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2282
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_c

    .line 2283
    const-string/jumbo v8, "NobodyLikesSpam1"

    const v9, 0x7f07048e

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2289
    :cond_b
    :goto_4
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 2290
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v9, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2284
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_d

    .line 2285
    const-string/jumbo v8, "NobodyLikesSpam2"

    const v9, 0x7f07048f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4

    .line 2286
    :cond_d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v12, :cond_b

    .line 2287
    aget-object v8, p2, v10

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4

    .line 2292
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v5    # "reason":Ljava/lang/Integer;
    :cond_e
    sget v8, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    if-ne p1, v8, :cond_f

    .line 2293
    aget-object v7, p2, v9

    check-cast v7, Ljava/util/HashMap;

    .line 2294
    .local v7, "waitingForLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2295
    .restart local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v8, "AppName"

    const v9, 0x7f07007d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2296
    const-string/jumbo v8, "OK"

    const v9, 0x7f0704f5

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2297
    const-string/jumbo v8, "ShareYouLocationUnableManually"

    const v9, 0x7f07067c

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/LaunchActivity$18;

    invoke-direct {v9, p0, v7}, Lorg/telegram/ui/LaunchActivity$18;-><init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)V

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2320
    const-string/jumbo v8, "ShareYouLocationUnable"

    const v9, 0x7f07067b

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2321
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 2322
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v9, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2324
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v7    # "waitingForLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    :cond_f
    sget v8, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-ne p1, v8, :cond_10

    .line 2325
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v8, :cond_5

    .line 2326
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2327
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 2328
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 2331
    .end local v1    # "child":Landroid/view/View;
    :cond_10
    sget v8, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, v8, :cond_12

    .line 2332
    sget-object v8, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_11

    sget-boolean v8, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v8, :cond_11

    .line 2334
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x2000

    const/16 v10, 0x2000

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2335
    :catch_0
    move-exception v2

    .line 2336
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2340
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_11
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 2341
    :catch_1
    move-exception v2

    .line 2342
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2345
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_12
    sget v8, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    if-ne p1, v8, :cond_13

    .line 2346
    invoke-virtual {p0, v10}, Lorg/telegram/ui/LaunchActivity;->rebuildAllFragments(Z)V

    goto/16 :goto_3

    .line 2347
    :cond_13
    sget v8, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    if-ne p1, v8, :cond_14

    .line 2348
    invoke-direct {p0, v9}, Lorg/telegram/ui/LaunchActivity;->showLanguageAlert(Z)V

    goto/16 :goto_3

    .line 2351
    :cond_14
    sget v8, Lorg/telegram/messenger/NotificationCenter;->showStatusNotifications:I

    if-ne p1, v8, :cond_5

    .line 2352
    aget-object v8, p2, v10

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 2353
    iput-object v11, p0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    goto/16 :goto_3

    .line 2355
    :cond_15
    aget-object v8, p2, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lorg/telegram/ui/LaunchActivity;->showToast(I)V

    goto/16 :goto_3
.end method

.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .locals 20
    .param p1, "dialogsFragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "dialog_id"    # J
    .param p4, "param"    # Z

    .prologue
    .line 1843
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2

    .line 1844
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v19, v0

    .line 1845
    .local v19, "lower_part":I
    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v0, v2

    move/from16 v18, v0

    .line 1847
    .local v18, "high_id":I
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 1848
    .local v16, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "scrollToTopOnResume"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1849
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1850
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1852
    :cond_0
    if-eqz v19, :cond_5

    .line 1853
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 1854
    const-string/jumbo v2, "chat_id"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1865
    :cond_1
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1925
    .end local v16    # "args":Landroid/os/Bundle;
    .end local v18    # "high_id":I
    .end local v19    # "lower_part":I
    :cond_2
    :goto_1
    return-void

    .line 1856
    .restart local v16    # "args":Landroid/os/Bundle;
    .restart local v18    # "high_id":I
    .restart local v19    # "lower_part":I
    :cond_3
    if-lez v19, :cond_4

    .line 1857
    const-string/jumbo v2, "user_id"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1858
    :cond_4
    if-gez v19, :cond_1

    .line 1859
    const-string/jumbo v2, "chat_id"

    move/from16 v0, v19

    neg-int v3, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1863
    :cond_5
    const-string/jumbo v2, "enc_id"

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1868
    :cond_6
    new-instance v17, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1870
    .local v17, "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1871
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1872
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v2, :cond_8

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1884
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2, v4}, Lorg/telegram/ui/ChatActivity;->openVideoEditor(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1885
    if-eqz p1, :cond_c

    .line 1886
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity;->finishFragment(Z)V

    .line 1918
    :cond_7
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 1919
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    .line 1920
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1921
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 1922
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 1923
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1875
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1877
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto :goto_2

    .line 1881
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_5

    .line 1884
    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    .line 1888
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto :goto_4

    .line 1892
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_13

    const/4 v2, 0x1

    move v3, v2

    :goto_6
    if-nez p1, :cond_14

    const/4 v2, 0x1

    :goto_7
    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v3, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    .line 1895
    const/4 v7, 0x0

    .line 1896
    .local v7, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 1897
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1898
    .restart local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1899
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1901
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ZLjava/util/ArrayList;)V

    .line 1904
    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1905
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingText(Ljava/lang/String;J)V

    .line 1908
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_12

    .line 1909
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v12, p2

    invoke-static/range {v8 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 1911
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1912
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 1913
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_8

    .line 1892
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_13
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_6

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_7
.end method

.method public getActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1

    .prologue
    .line 1960
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public getLayersActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1

    .prologue
    .line 1964
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public getRightActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 7
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3077
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3078
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 3079
    instance-of v2, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 3080
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    .line 3081
    .local v1, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 3082
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 3083
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 3084
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 3085
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 3086
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 3087
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_0

    .line 3088
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3089
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3090
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3136
    .end local v1    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v2, v4

    .line 3078
    goto :goto_0

    .line 3095
    :cond_2
    instance-of v2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_6

    .line 3096
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_4

    .line 3097
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 3098
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3099
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 3100
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 3101
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3102
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_3

    .line 3103
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3104
    add-int/lit8 v0, v0, -0x1

    .line 3102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3106
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_1

    .line 3109
    .end local v0    # "a":I
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 3110
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 3111
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3112
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_5

    .line 3113
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3114
    add-int/lit8 v0, v0, -0x1

    .line 3112
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3116
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    .line 3120
    .end local v0    # "a":I
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 3121
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 3122
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 3123
    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-eqz v2, :cond_7

    .line 3124
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3125
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3126
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3130
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 3128
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_4

    :cond_8
    move v4, v3

    .line 3133
    goto/16 :goto_1

    .line 3135
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_a

    instance-of v2, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v2, :cond_a

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    move v4, v3

    .line 3136
    goto/16 :goto_1

    :cond_a
    move v2, v4

    .line 3135
    goto :goto_5
.end method

.method public needCloseLastFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 4
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3142
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3143
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_0

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 3144
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 3145
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 3166
    :goto_0
    return v0

    .line 3147
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_2

    .line 3148
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_1

    .line 3149
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    move v0, v1

    .line 3166
    goto :goto_0

    .line 3151
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 3152
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 3153
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_0

    .line 3157
    :cond_3
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 3158
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 3159
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_0

    .line 3162
    :cond_4
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_1

    .line 3163
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_1
.end method

.method public needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 8
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z
    .param p4, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2985
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2986
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    .line 2988
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2989
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v3, :cond_2

    instance-of v3, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2990
    instance-of v3, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 2991
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    .line 2992
    .local v1, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_3

    .line 2993
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2994
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2995
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2996
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2997
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2998
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_1

    .line 2999
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3000
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3001
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3071
    .end local v1    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_1
    :goto_1
    return v5

    :cond_2
    move v3, v5

    .line 2989
    goto :goto_0

    .line 3007
    :cond_3
    instance-of v3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_18

    .line 3008
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p4, v3, :cond_c

    .line 3009
    :cond_5
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p4, v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_7

    :cond_6
    move v2, v4

    .line 3010
    .local v2, "result":Z
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3011
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_8

    .line 3012
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3013
    add-int/lit8 v0, v0, -0x1

    .line 3011
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "a":I
    .end local v2    # "result":Z
    :cond_7
    move v2, v5

    .line 3009
    goto :goto_2

    .line 3015
    .restart local v0    # "a":I
    .restart local v2    # "result":Z
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_b

    :goto_4
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 3017
    .end local v0    # "a":I
    :cond_9
    if-nez v2, :cond_a

    .line 3018
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, v5, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    :cond_a
    move v5, v2

    .line 3020
    goto :goto_1

    .restart local v0    # "a":I
    :cond_b
    move v4, v5

    .line 3015
    goto :goto_4

    .line 3021
    .end local v0    # "a":I
    .end local v2    # "result":Z
    :cond_c
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_f

    .line 3022
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 3023
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3024
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 3025
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 3026
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3027
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_d

    .line 3028
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3029
    add-int/lit8 v0, v0, -0x1

    .line 3027
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3031
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_e

    :goto_6
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    :cond_e
    move v4, v5

    goto :goto_6

    .line 3034
    .end local v0    # "a":I
    :cond_f
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_13

    .line 3035
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_10

    move v3, v4

    :goto_7
    invoke-virtual {v6, p1, v3, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 3036
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3037
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_8
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_11

    .line 3038
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3039
    add-int/lit8 v0, v0, -0x1

    .line 3037
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .end local v0    # "a":I
    :cond_10
    move v3, v5

    .line 3035
    goto :goto_7

    .line 3041
    .restart local v0    # "a":I
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_12

    :goto_9
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    :cond_12
    move v4, v5

    goto :goto_9

    .line 3045
    .end local v0    # "a":I
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 3046
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_a
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_14

    .line 3047
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3048
    add-int/lit8 v0, v0, -0x1

    .line 3046
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3050
    :cond_14
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_16

    move v3, v4

    :goto_b
    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 3052
    .end local v0    # "a":I
    :cond_15
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v4, :cond_17

    :goto_c
    invoke-virtual {v3, p1, v4, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_1

    .restart local v0    # "a":I
    :cond_16
    move v3, v5

    .line 3050
    goto :goto_b

    .end local v0    # "a":I
    :cond_17
    move v4, v5

    .line 3052
    goto :goto_c

    .line 3055
    :cond_18
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_1a

    .line 3056
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 3057
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 3058
    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-eqz v3, :cond_19

    .line 3059
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3060
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3061
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3065
    :goto_d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_1

    .line 3063
    :cond_19
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    const/high16 v4, 0x7f000000

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_d

    :cond_1a
    move v5, v4

    .line 3068
    goto/16 :goto_1

    .line 3070
    :cond_1b
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v3, :cond_1c

    instance-of v3, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v3, :cond_1c

    move v3, v4

    :goto_e
    invoke-virtual {v6, v3, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    move v5, v4

    .line 3071
    goto/16 :goto_1

    :cond_1c
    move v3, v5

    .line 3070
    goto :goto_e
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2923
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 2924
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2932
    :cond_0
    :goto_0
    return-void

    .line 2927
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    .line 2928
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2929
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    .line 2930
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2896
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 2898
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 2899
    .local v2, "menu":Landroid/view/Menu;
    if-eqz v2, :cond_0

    .line 2900
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z

    move-result v1

    .line 2901
    .local v1, "extended":Z
    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2902
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z

    move-result v1

    .line 2903
    if-nez v1, :cond_0

    .line 2904
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2911
    .end local v1    # "extended":Z
    .end local v2    # "menu":Landroid/view/Menu;
    :cond_0
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2919
    :cond_1
    :goto_1
    return-void

    .line 2908
    :catch_0
    move-exception v0

    .line 2909
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2914
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    .line 2915
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2916
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    .line 2917
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1973
    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v2, :cond_0

    .line 1974
    sput v3, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 1975
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1977
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1978
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v0

    .line 1979
    .local v0, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v0, :cond_1

    .line 1980
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ThemeEditorView;->onActivityResult(IILandroid/content/Intent;)V

    .line 1982
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1983
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1984
    .local v1, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1986
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1987
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1988
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1989
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1991
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1992
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1993
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1996
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_4
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2854
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2855
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2882
    :cond_0
    :goto_0
    return-void

    .line 2858
    :cond_1
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2859
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 2860
    :cond_2
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2861
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 2862
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2863
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_0

    .line 2864
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2865
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_0

    .line 2866
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2867
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 2868
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_0

    .line 2870
    :cond_6
    const/4 v0, 0x0

    .line 2871
    .local v0, "cancel":Z
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2872
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2873
    .local v1, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    .line 2875
    .end local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_7
    :goto_1
    if-nez v0, :cond_0

    .line 2876
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto/16 :goto_0

    .restart local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_8
    move v0, v3

    .line 2873
    goto :goto_1

    .line 2880
    .end local v0    # "cancel":Z
    .end local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2205
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 2206
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2207
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 2208
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v2

    .line 2209
    .local v2, "pipRoundVideoView":Lorg/telegram/ui/Components/PipRoundVideoView;
    if-eqz v2, :cond_0

    .line 2210
    invoke-virtual {v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->onConfigurationChanged()V

    .line 2212
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v1

    .line 2213
    .local v1, "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v1, :cond_1

    .line 2214
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2216
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v0

    .line 2217
    .local v0, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v0, :cond_2

    .line 2218
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->onConfigurationChanged()V

    .line 2220
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 37
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 173
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/NativeCrashManager;->handleDumpFiles(Landroid/app/Activity;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 176
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v32

    if-nez v32, :cond_3

    .line 177
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 178
    .local v19, "intent":Landroid/content/Intent;
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1

    const-string/jumbo v32, "android.intent.action.SEND"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 179
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 674
    .end local v19    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 183
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v32, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v33, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 184
    .local v25, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v32, "intro_crashed_time"

    const-wide/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 185
    .local v10, "crashed_time":J
    const-string/jumbo v32, "fromIntro"

    const/16 v33, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 186
    .local v17, "fromIntro":Z
    if-eqz v17, :cond_2

    .line 187
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string/jumbo v33, "intro_crashed_time"

    const-wide/16 v34, 0x0

    invoke-interface/range {v32 .. v35}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v10, v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(J)J

    move-result-wide v32

    const-wide/32 v34, 0x1d4c0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_3

    if-eqz v19, :cond_3

    if-nez v17, :cond_3

    .line 190
    sget-object v32, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v33, Lorg/telegram/messenger/ApplicationLoader;->logininfo2:Ljava/lang/String;

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 191
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v30

    .line 192
    .local v30, "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_3

    .line 193
    new-instance v20, Landroid/content/Intent;

    const-class v32, Lorg/telegram/ui/IntroActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v20, "intent2":Landroid/content/Intent;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto/16 :goto_0

    .line 203
    .end local v10    # "crashed_time":J
    .end local v17    # "fromIntro":Z
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "intent2":Landroid/content/Intent;
    .end local v25    # "preferences":Landroid/content/SharedPreferences;
    .end local v30    # "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_3
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->requestWindowFeature(I)Z

    .line 204
    const v32, 0x7f090007

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->setTheme(I)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v32

    const v33, 0x7f02026e

    invoke-virtual/range {v32 .. v33}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 206
    sget-object v32, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_4

    sget-boolean v32, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v32, :cond_4

    .line 208
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v32

    const/16 v33, 0x2000

    const/16 v34, 0x2000

    invoke-virtual/range {v32 .. v34}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_4
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x18

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_5

    .line 216
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->isInMultiWindowMode()Z

    move-result v32

    sput-boolean v32, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    .line 218
    :cond_5
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 219
    sget-object v32, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-eqz v32, :cond_6

    sget-boolean v32, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v32, :cond_6

    .line 220
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v32

    sput v32, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 223
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const-string/jumbo v33, "status_bar_height"

    const-string/jumbo v34, "dimen"

    const-string/jumbo v35, "android"

    invoke-virtual/range {v32 .. v35}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 224
    .local v27, "resourceId":I
    if-lez v27, :cond_7

    .line 225
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    sput v32, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 228
    :cond_7
    new-instance v32, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 230
    new-instance v32, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    new-instance v33, Landroid/view/ViewGroup$LayoutParams;

    const/16 v34, -0x1

    const/16 v35, -0x1

    invoke-direct/range {v33 .. v35}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v32

    if-eqz v32, :cond_e

    .line 234
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v32

    const/16 v33, 0x10

    invoke-virtual/range {v32 .. v33}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 236
    new-instance v21, Lorg/telegram/ui/LaunchActivity$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$1;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V

    .line 298
    .local v21, "launchLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    const/16 v33, -0x1

    const/high16 v34, -0x40800000    # -1.0f

    invoke-static/range {v33 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v32, Landroid/view/View;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    .line 301
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f020047

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 302
    .local v13, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v32, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v33, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    move-object/from16 v32, v0

    const/16 v33, -0x1

    const/16 v34, -0x1

    invoke-static/range {v33 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 308
    new-instance v32, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    sget-object v33, Lorg/telegram/ui/LaunchActivity;->rightFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 313
    new-instance v32, Landroid/widget/FrameLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    const v33, 0x40295274

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 317
    new-instance v32, Landroid/widget/FrameLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    sget-object v32, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_c

    const/16 v32, 0x8

    :goto_2
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    const/high16 v33, 0x7f000000

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/ui/LaunchActivity$2;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$2;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/ui/LaunchActivity$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$3;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    new-instance v32, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setRemoveActionBarExtraHeight(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundView(Landroid/view/View;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setUseAlphaAnimations(Z)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    const v33, 0x7f02003c

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundResource(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    sget-object v33, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v33, v0

    sget-object v32, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_d

    const/16 v32, 0x8

    :goto_3
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 370
    .end local v13    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v21    # "launchLayout":Landroid/widget/RelativeLayout;
    :goto_4
    new-instance v32, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    invoke-static/range {v32 .. v33}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    const-string/jumbo v33, "chats_menuBackground"

    invoke-static/range {v33 .. v33}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerLayout(Landroid/view/ViewGroup;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/FrameLayout$LayoutParams;

    .line 379
    .local v22, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v28

    .line 380
    .local v28, "screenSize":Landroid/graphics/Point;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v32

    if-eqz v32, :cond_f

    const/high16 v32, 0x43a00000    # 320.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    :goto_5
    move/from16 v0, v32

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 381
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/ui/LaunchActivity$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$4;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setParentActionBarLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    sget-object v33, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 523
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->loadWallpaper()V

    .line 525
    new-instance v32, Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v33, v0

    const/16 v34, -0x1

    const/high16 v35, -0x40800000    # -1.0f

    invoke-static/range {v34 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object p0, v34, v35

    invoke-virtual/range {v32 .. v34}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 529
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    .line 531
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 532
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 533
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 534
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 535
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 536
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 537
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 538
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 539
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 540
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 542
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->showStatusNotifications:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_11

    .line 545
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v32

    if-nez v32, :cond_10

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/ui/LoginActivity;

    invoke-direct/range {v33 .. v33}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 556
    :goto_6
    if-eqz p1, :cond_9

    .line 557
    :try_start_1
    const-string/jumbo v32, "fragment"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 558
    .local v16, "fragmentName":Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 559
    const-string/jumbo v32, "args"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 560
    .local v7, "args":Landroid/os/Bundle;
    const/16 v32, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v33

    sparse-switch v33, :sswitch_data_0

    :cond_8
    :goto_7
    packed-switch v32, :pswitch_data_0

    .line 636
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v16    # "fragmentName":Ljava/lang/String;
    :cond_9
    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 638
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v33

    const/16 v34, 0x0

    if-eqz p1, :cond_16

    const/16 v32, 0x1

    :goto_9
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v32

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 641
    :try_start_2
    sget-object v23, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 642
    .local v23, "os1":Ljava/lang/String;
    sget-object v24, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 643
    .local v24, "os2":Ljava/lang/String;
    if-eqz v23, :cond_17

    .line 644
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 648
    :goto_a
    if-eqz v24, :cond_18

    .line 649
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 653
    :goto_b
    const-string/jumbo v32, "flyme"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_a

    const-string/jumbo v32, "flyme"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 654
    :cond_a
    const/16 v32, 0x1

    sput-boolean v32, Lorg/telegram/messenger/AndroidUtilities;->incorrectDisplaySizeFix:Z

    .line 655
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v31

    .line 656
    .local v31, "view":Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v32

    new-instance v33, Lorg/telegram/ui/LaunchActivity$5;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$5;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/view/View;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual/range {v32 .. v33}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 673
    .end local v23    # "os1":Ljava/lang/String;
    .end local v24    # "os2":Ljava/lang/String;
    .end local v31    # "view":Landroid/view/View;
    :cond_b
    :goto_c
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->setBaseActivity(Landroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 209
    .end local v22    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v27    # "resourceId":I
    .end local v28    # "screenSize":Landroid/graphics/Point;
    :catch_0
    move-exception v14

    .line 210
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 318
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v13    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v21    # "launchLayout":Landroid/widget/RelativeLayout;
    .restart local v27    # "resourceId":I
    :cond_c
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 364
    :cond_d
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 367
    .end local v13    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v21    # "launchLayout":Landroid/widget/RelativeLayout;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v33, v0

    new-instance v34, Landroid/view/ViewGroup$LayoutParams;

    const/16 v35, -0x1

    const/16 v36, -0x1

    invoke-direct/range {v34 .. v36}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v32 .. v34}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 380
    .restart local v22    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v28    # "screenSize":Landroid/graphics/Point;
    :cond_f
    const/high16 v32, 0x43a00000    # 320.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v33, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v33

    const/high16 v34, 0x42600000    # 56.0f

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v34

    sub-int v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v32

    goto/16 :goto_5

    .line 549
    :cond_10
    new-instance v12, Lorg/telegram/ui/DialogsActivity;

    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-direct {v12, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 550
    .local v12, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_6

    .line 560
    .end local v12    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v16    # "fragmentName":Ljava/lang/String;
    :sswitch_0
    :try_start_3
    const-string/jumbo v33, "chat"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x0

    goto/16 :goto_7

    :sswitch_1
    const-string/jumbo v33, "settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x1

    goto/16 :goto_7

    :sswitch_2
    const-string/jumbo v33, "group"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x2

    goto/16 :goto_7

    :sswitch_3
    const-string/jumbo v33, "channel"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x3

    goto/16 :goto_7

    :sswitch_4
    const-string/jumbo v33, "edit"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x4

    goto/16 :goto_7

    :sswitch_5
    const-string/jumbo v33, "chat_profile"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x5

    goto/16 :goto_7

    :sswitch_6
    const-string/jumbo v33, "wallpapers"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x6

    goto/16 :goto_7

    .line 562
    :pswitch_0
    if-eqz v7, :cond_9

    .line 563
    new-instance v9, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v9, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 564
    .local v9, "chat":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 565
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ChatActivity;->restoreSelfArgs(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_8

    .line 616
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v9    # "chat":Lorg/telegram/ui/ChatActivity;
    .end local v16    # "fragmentName":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 617
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 570
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v16    # "fragmentName":Ljava/lang/String;
    :pswitch_1
    :try_start_4
    new-instance v29, Lorg/telegram/ui/SettingsActivity;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    .line 571
    .local v29, "settings":Lorg/telegram/ui/SettingsActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 572
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SettingsActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 576
    .end local v29    # "settings":Lorg/telegram/ui/SettingsActivity;
    :pswitch_2
    if-eqz v7, :cond_9

    .line 577
    new-instance v18, Lorg/telegram/ui/GroupCreateFinalActivity;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lorg/telegram/ui/GroupCreateFinalActivity;-><init>(Landroid/os/Bundle;)V

    .line 578
    .local v18, "group":Lorg/telegram/ui/GroupCreateFinalActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 579
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupCreateFinalActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 584
    .end local v18    # "group":Lorg/telegram/ui/GroupCreateFinalActivity;
    :pswitch_3
    if-eqz v7, :cond_9

    .line 585
    new-instance v8, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v8, v7}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 586
    .local v8, "channel":Lorg/telegram/ui/ChannelCreateActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 587
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ChannelCreateActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 592
    .end local v8    # "channel":Lorg/telegram/ui/ChannelCreateActivity;
    :pswitch_4
    if-eqz v7, :cond_9

    .line 593
    new-instance v8, Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {v8, v7}, Lorg/telegram/ui/ChannelEditActivity;-><init>(Landroid/os/Bundle;)V

    .line 594
    .local v8, "channel":Lorg/telegram/ui/ChannelEditActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 595
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ChannelEditActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 600
    .end local v8    # "channel":Lorg/telegram/ui/ChannelEditActivity;
    :pswitch_5
    if-eqz v7, :cond_9

    .line 601
    new-instance v26, Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 602
    .local v26, "profile":Lorg/telegram/ui/ProfileActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 603
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 608
    .end local v26    # "profile":Lorg/telegram/ui/ProfileActivity;
    :pswitch_6
    new-instance v29, Lorg/telegram/ui/WallpapersActivity;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/ui/WallpapersActivity;-><init>()V

    .line 609
    .local v29, "settings":Lorg/telegram/ui/WallpapersActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 610
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/WallpapersActivity;->restoreSelfArgs(Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    .line 620
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v16    # "fragmentName":Ljava/lang/String;
    .end local v29    # "settings":Lorg/telegram/ui/WallpapersActivity;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 621
    .local v15, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v0, v15, Lorg/telegram/ui/DialogsActivity;

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 622
    check-cast v15, Lorg/telegram/ui/DialogsActivity;

    .end local v15    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 624
    :cond_12
    const/4 v6, 0x1

    .line 625
    .local v6, "allowOpen":Z
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v32

    if-eqz v32, :cond_13

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_15

    const/4 v6, 0x1

    .line 627
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lorg/telegram/ui/LoginActivity;

    move/from16 v32, v0

    if-eqz v32, :cond_13

    .line 628
    const/4 v6, 0x0

    .line 631
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lorg/telegram/ui/LoginActivity;

    move/from16 v32, v0

    if-eqz v32, :cond_14

    .line 632
    const/4 v6, 0x0

    .line 634
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_8

    .line 626
    :cond_15
    const/4 v6, 0x0

    goto :goto_d

    .line 638
    .end local v6    # "allowOpen":Z
    :cond_16
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 646
    .restart local v23    # "os1":Ljava/lang/String;
    .restart local v24    # "os2":Ljava/lang/String;
    :cond_17
    :try_start_5
    const-string/jumbo v23, ""

    goto/16 :goto_a

    .line 651
    :cond_18
    const-string/jumbo v24, ""
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_b

    .line 670
    .end local v23    # "os1":Ljava/lang/String;
    .end local v24    # "os2":Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 671
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 560
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b244d4f -> :sswitch_6
        -0x5070143e -> :sswitch_5
        0x2e9358 -> :sswitch_0
        0x2f6e0a -> :sswitch_4
        0x5e0f67f -> :sswitch_2
        0x2c0b7d03 -> :sswitch_3
        0x5582bc23 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2109
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer;->destroyPhotoViewer()V

    .line 2110
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/SecretMediaViewer;->destroyPhotoViewer()V

    .line 2111
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ArticleViewer;->destroyArticleViewer()V

    .line 2112
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/StickerPreviewViewer;->destroy()V

    .line 2113
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v3

    .line 2114
    .local v3, "pipRoundVideoView":Lorg/telegram/ui/Components/PipRoundVideoView;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/MediaController;->setBaseActivity(Landroid/app/Activity;Z)V

    .line 2115
    if-eqz v3, :cond_0

    .line 2116
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 2118
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->destroyResources()V

    .line 2119
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v2

    .line 2120
    .local v2, "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v2, :cond_1

    .line 2121
    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->destroy()V

    .line 2123
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v1

    .line 2124
    .local v1, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v1, :cond_2

    .line 2125
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->destroy()V

    .line 2128
    :cond_2
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v5, :cond_3

    .line 2129
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 2130
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2136
    :cond_3
    :goto_0
    :try_start_1
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v5, :cond_4

    .line 2137
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 2138
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2143
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    if-eqz v5, :cond_5

    .line 2144
    iput-object v7, p0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    .line 2146
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2147
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2148
    return-void

    .line 2132
    :catch_0
    move-exception v0

    .line 2133
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2140
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2141
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 2951
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_2

    .line 2952
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2953
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2980
    :goto_0
    return v0

    .line 2954
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2955
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2957
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2958
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2959
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2980
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2960
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2961
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2963
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2966
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2967
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2968
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2969
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2971
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto :goto_1

    .line 2973
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_1

    .line 2976
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 2886
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2887
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2888
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2889
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2890
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2892
    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 2224
    sput-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    .line 2225
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 2226
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1837
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1838
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 1839
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2069
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->lastAppPauseTime:J

    .line 2071
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 2072
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$15;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2079
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onPasscodePause()V

    .line 2080
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 2081
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 2083
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 2085
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_1

    .line 2086
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onPause()V

    .line 2088
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 2089
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->unregisterUpdates()V

    .line 2090
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2091
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->onPause()V

    .line 2093
    :cond_2
    return-void
.end method

.method public onPreIme()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2936
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2937
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    .line 2946
    :goto_0
    return v0

    .line 2939
    :cond_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2940
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 2942
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2943
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2946
    goto :goto_0
.end method

.method public onRebuildAllFragments(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 2
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v1, 0x1

    .line 3179
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3180
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v0, :cond_0

    .line 3181
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 3182
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 3185
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    .line 3186
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/16 v9, 0x13

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 2000
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2001
    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    if-eq p1, v8, :cond_0

    if-eq p1, v9, :cond_0

    const/16 v3, 0x14

    if-ne p1, v3, :cond_c

    .line 2002
    :cond_0
    const/4 v2, 0x1

    .line 2003
    .local v2, "showAlert":Z
    array-length v3, p3

    if-lez v3, :cond_6

    aget v3, p3, v5

    if-nez v3, :cond_6

    .line 2004
    if-ne p1, v7, :cond_2

    .line 2005
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    .line 2065
    .end local v2    # "showAlert":Z
    :cond_1
    :goto_0
    return-void

    .line 2007
    .restart local v2    # "showAlert":Z
    :cond_2
    if-ne p1, v8, :cond_3

    .line 2008
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    goto :goto_0

    .line 2010
    :cond_3
    if-ne p1, v6, :cond_4

    .line 2011
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    goto :goto_0

    .line 2013
    :cond_4
    if-eq p1, v9, :cond_5

    const/16 v3, 0x14

    if-ne p1, v3, :cond_6

    .line 2014
    :cond_5
    const/4 v2, 0x0

    .line 2017
    :cond_6
    if-eqz v2, :cond_d

    .line 2018
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2019
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07007d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2020
    if-ne p1, v6, :cond_8

    .line 2021
    const-string/jumbo v3, "PermissionNoAudio"

    const v4, 0x7f070568

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2029
    :cond_7
    :goto_1
    const-string/jumbo v3, "PermissionOpenSettings"

    const v4, 0x7f07056d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LaunchActivity$14;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LaunchActivity$14;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2042
    const-string/jumbo v3, "OK"

    const v4, 0x7f0704f5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2043
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 2022
    :cond_8
    if-ne p1, v7, :cond_9

    .line 2023
    const-string/jumbo v3, "PermissionStorage"

    const v4, 0x7f07056e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 2024
    :cond_9
    if-ne p1, v8, :cond_a

    .line 2025
    const-string/jumbo v3, "PermissionContacts"

    const v4, 0x7f070566

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 2026
    :cond_a
    if-eq p1, v9, :cond_b

    const/16 v3, 0x14

    if-ne p1, v3, :cond_7

    .line 2027
    :cond_b
    const-string/jumbo v3, "PermissionNoCamera"

    const v4, 0x7f07056a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 2046
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "showAlert":Z
    :cond_c
    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    .line 2047
    array-length v3, p3

    if-lez v3, :cond_d

    aget v3, p3, v5

    if-nez v3, :cond_d

    .line 2048
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2051
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_e

    .line 2052
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2053
    .local v1, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 2055
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2056
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_f

    .line 2057
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2058
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 2060
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2061
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2062
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2153
    invoke-direct {p0, v4}, Lorg/telegram/ui/LaunchActivity;->showLanguageAlert(Z)V

    .line 2154
    sput-boolean v4, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 2155
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/LaunchActivity$16;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LaunchActivity$16;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2162
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onPasscodeResume()V

    .line 2163
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 2164
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2165
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2166
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2167
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2177
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "org.telegram.multi.beta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2178
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForCrashes(Landroid/app/Activity;)V

    .line 2179
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForUpdates(Landroid/app/Activity;)V

    .line 2189
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 2190
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->updateCurrentConnectionState()V

    .line 2191
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2192
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->onResume()V

    .line 2194
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v1

    .line 2195
    .local v1, "pipRoundVideoView":Lorg/telegram/ui/Components/PipRoundVideoView;
    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2196
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 2197
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_3

    .line 2198
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 2201
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3
    return-void

    .line 2170
    .end local v1    # "pipRoundVideoView":Lorg/telegram/ui/Components/PipRoundVideoView;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2171
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2172
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2173
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2175
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->onResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2807
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2808
    const/4 v3, 0x0

    .line 2809
    .local v3, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2810
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2811
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2823
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 2824
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 2825
    .local v1, "args":Landroid/os/Bundle;
    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 2826
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2827
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "chat"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    :cond_1
    :goto_1
    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->saveSelfArgs(Landroid/os/Bundle;)V

    .line 2850
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    :goto_2
    return-void

    .line 2812
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2813
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 2814
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2815
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 2818
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2819
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 2828
    .restart local v1    # "args":Landroid/os/Bundle;
    :cond_6
    instance-of v4, v3, Lorg/telegram/ui/SettingsActivity;

    if-eqz v4, :cond_7

    .line 2829
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "settings"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2847
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :catch_0
    move-exception v2

    .line 2848
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2830
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_7
    :try_start_1
    instance-of v4, v3, Lorg/telegram/ui/GroupCreateFinalActivity;

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    .line 2831
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2832
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "group"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2833
    :cond_8
    instance-of v4, v3, Lorg/telegram/ui/WallpapersActivity;

    if-eqz v4, :cond_9

    .line 2834
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "wallpapers"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2835
    :cond_9
    instance-of v4, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v4, :cond_a

    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/ProfileActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/telegram/ui/ProfileActivity;->isChat()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    .line 2836
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2837
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "chat_profile"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2838
    :cond_a
    instance-of v4, v3, Lorg/telegram/ui/ChannelCreateActivity;

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    const-string/jumbo v4, "step"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    .line 2839
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2840
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "channel"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2841
    :cond_b
    instance-of v4, v3, Lorg/telegram/ui/ChannelEditActivity;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 2842
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2843
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "edit"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 2097
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2098
    invoke-static {p0}, Lorg/telegram/messenger/browser/Browser;->bindCustomTabsService(Landroid/app/Activity;)V

    .line 2099
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 2103
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2104
    invoke-static {p0}, Lorg/telegram/messenger/browser/Browser;->unbindCustomTabsService(Landroid/app/Activity;)V

    .line 2105
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 1952
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1953
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z

    .prologue
    .line 1956
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method

.method public rebuildAllFragments(Z)V
    .locals 2
    .param p1, "last"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3170
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 3171
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 3175
    :goto_0
    return-void

    .line 3173
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    goto :goto_0
.end method

.method public showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 4
    .param p1, "builder"    # Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x0

    .line 1803
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v2, :cond_0

    .line 1804
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1805
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1812
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1813
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v3, Lorg/telegram/ui/LaunchActivity$13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LaunchActivity$13;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1828
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1832
    :goto_1
    return-object v1

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1829
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1830
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
