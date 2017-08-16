.class public Lorg/telegram/ui/ThemingChatsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ThemingChatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;
    }
.end annotation


# static fields
.field public static final CENTER:I


# instance fields
.field private avatarMarginLeftRow:I

.field private avatarRadiusRow:I

.field private avatarSizeRow:I

.field private checksColorRow:I

.field private countBGColorRow:I

.field private countColorRow:I

.field private countSilentBGColorRow:I

.field private countSizeRow:I

.field private dividerColorRow:I

.field private favIndicatorColorRow:I

.field private floatingBGColorRow:I

.field private floatingPencilColorRow:I

.field private groupIconColorRow:I

.field private groupNameColorRow:I

.field private groupNameSizeRow:I

.field private headerColorRow:I

.field private headerGradientColorRow:I

.field private headerGradientRow:I

.field private headerIconsColorRow:I

.field private headerSection2Row:I

.field private headerTabCounterBGColorRow:I

.field private headerTabCounterColorRow:I

.field private headerTabCounterSilentBGColorRow:I

.field private headerTabIconColorRow:I

.field private headerTabUnselectedIconColorRow:I

.field private headerTitleColorRow:I

.field private headerTitleRow:I

.field private hideHeaderShadow:I

.field private hideStatusIndicatorCheckRow:I

.field private highlightSearchColorRow:I

.field private listAdapter:Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private mediaColorRow:I

.field private memberColorRow:I

.field private messageColorRow:I

.field private messageSizeRow:I

.field private muteColorRow:I

.field private nameColorRow:I

.field private nameSizeRow:I

.field private pinnedMsgBGColorRow:I

.field private rowColorRow:I

.field private rowCount:I

.field private rowGradientColorRow:I

.field private rowGradientListCheckRow:I

.field private rowGradientRow:I

.field private rowsSection2Row:I

.field private rowsSectionRow:I

.field private showPrefix:Z

.field private tabsBGColorRow:I

.field private tabsCounterSizeRow:I

.field private tabsTextModeRow:I

.field private tabsTextSizeRow:I

.field private tabsToBottomRow:I

.field private timeColorRow:I

.field private timeSizeRow:I

.field private typingColorRow:I

.field private unknownNameColorRow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 1240
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemingChatsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->showPrefix:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ThemingChatsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ThemingChatsActivity;->showPrefix:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemingChatsActivity;)Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->listAdapter:Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTabCounterBGColorRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTabCounterSilentBGColorRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowColorRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->tabsBGColorRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->favIndicatorColorRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowGradientColorRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowGradientListCheckRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->pinnedMsgBGColorRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->dividerColorRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTitleRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerColorRow:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemingChatsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerGradientRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowGradientRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->nameColorRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->groupNameColorRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->unknownNameColorRow:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->groupIconColorRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->muteColorRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->checksColorRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->messageColorRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemingChatsActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemingChatsActivity;->commitInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->highlightSearchColorRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->memberColorRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->mediaColorRow:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->typingColorRow:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->timeColorRow:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->countColorRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->countBGColorRow:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->countSilentBGColorRow:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->avatarRadiusRow:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->tabsTextSizeRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerGradientColorRow:I

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->tabsCounterSizeRow:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->avatarSizeRow:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->avatarMarginLeftRow:I

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->nameSizeRow:I

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->groupNameSizeRow:I

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->messageSizeRow:I

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->timeSizeRow:I

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->countSizeRow:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->floatingPencilColorRow:I

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->floatingBGColorRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTitleColorRow:I

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->hideStatusIndicatorCheckRow:I

    return v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->tabsToBottomRow:I

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->tabsTextModeRow:I

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->hideHeaderShadow:I

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ThemingChatsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemingChatsActivity;->resetPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ThemingChatsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ThemingChatsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerSection2Row:I

    return v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowsSection2Row:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerIconsColorRow:I

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowsSectionRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTabIconColorRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTabUnselectedIconColorRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ThemingChatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTabCounterColorRow:I

    return v0
.end method

.method private commitInt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1179
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1180
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1181
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1183
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1184
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 1187
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingChatsActivity;->refreshTheme()V

    .line 1189
    return-void
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1226
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemingChatsActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemingChatsActivity$5;-><init>(Lorg/telegram/ui/ThemingChatsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private refreshTheme()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1192
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPlusTheme()V

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 1196
    :cond_0
    return-void
.end method

.method private resetPref(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1167
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1168
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1169
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1170
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1171
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->updateChatsColors()V

    .line 1172
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 1173
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 1175
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ThemingChatsActivity;->refreshTheme()V

    .line 1176
    return-void
.end method

.method private updateTheme()V
    .locals 4

    .prologue
    .line 1208
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1209
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1210
    invoke-virtual {p0}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1211
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1212
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1213
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1214
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 205
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->fragmentView:Landroid/view/View;

    if-nez v3, :cond_4

    .line 208
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200bc

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 210
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 213
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "MainScreen"

    const v5, 0x7f0703fa

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingChatsActivity$1;-><init>(Lorg/telegram/ui/ThemingChatsActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 224
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingChatsActivity$2;-><init>(Lorg/telegram/ui/ThemingChatsActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    new-instance v3, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;-><init>(Lorg/telegram/ui/ThemingChatsActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listAdapter:Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;

    .line 239
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->fragmentView:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 242
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    .line 244
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 245
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 247
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 250
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 251
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 253
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 254
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 255
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 256
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lorg/telegram/ui/ThemingChatsActivity;->listAdapter:Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingChatsActivity$3;-><init>(Lorg/telegram/ui/ThemingChatsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1132
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingChatsActivity$4;-><init>(Lorg/telegram/ui/ThemingChatsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1155
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1162
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_0
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/ThemingChatsActivity;->updateTheme()V

    .line 1163
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 1157
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1158
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 1159
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1218
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1219
    invoke-direct {p0}, Lorg/telegram/ui/ThemingChatsActivity;->fixLayout()V

    .line 1220
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 131
    iput v3, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    .line 132
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerSection2Row:I

    .line 133
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerColorRow:I

    .line 134
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerGradientRow:I

    .line 135
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerGradientColorRow:I

    .line 136
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTitleColorRow:I

    .line 137
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTitleRow:I

    .line 138
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerIconsColorRow:I

    .line 139
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->hideHeaderShadow:I

    .line 140
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->tabsBGColorRow:I

    .line 141
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTabIconColorRow:I

    .line 142
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTabUnselectedIconColorRow:I

    .line 143
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTabCounterColorRow:I

    .line 144
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->tabsCounterSizeRow:I

    .line 145
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTabCounterBGColorRow:I

    .line 146
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->headerTabCounterSilentBGColorRow:I

    .line 147
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->tabsToBottomRow:I

    .line 148
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->tabsTextModeRow:I

    .line 149
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->tabsTextSizeRow:I

    .line 151
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowsSectionRow:I

    .line 152
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowsSection2Row:I

    .line 154
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowColorRow:I

    .line 155
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowGradientRow:I

    .line 156
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowGradientColorRow:I

    .line 159
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->pinnedMsgBGColorRow:I

    .line 160
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->dividerColorRow:I

    .line 162
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->avatarRadiusRow:I

    .line 163
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->avatarSizeRow:I

    .line 164
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->avatarMarginLeftRow:I

    .line 165
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->hideStatusIndicatorCheckRow:I

    .line 166
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->favIndicatorColorRow:I

    .line 167
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->nameColorRow:I

    .line 168
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->unknownNameColorRow:I

    .line 169
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->nameSizeRow:I

    .line 170
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->groupNameColorRow:I

    .line 171
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->groupNameSizeRow:I

    .line 172
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->groupIconColorRow:I

    .line 173
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->muteColorRow:I

    .line 174
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->checksColorRow:I

    .line 176
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->messageColorRow:I

    .line 177
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->messageSizeRow:I

    .line 178
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->memberColorRow:I

    .line 179
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->mediaColorRow:I

    .line 180
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->typingColorRow:I

    .line 181
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->timeColorRow:I

    .line 182
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->timeSizeRow:I

    .line 183
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->countColorRow:I

    .line 184
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->countSizeRow:I

    .line 185
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->countBGColorRow:I

    .line 187
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->countSilentBGColorRow:I

    .line 189
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->floatingPencilColorRow:I

    .line 190
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->floatingBGColorRow:I

    .line 192
    iget v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->highlightSearchColorRow:I

    .line 193
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "plusconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "chatsShowPrefix"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ThemingChatsActivity;->showPrefix:Z

    .line 195
    return v4
.end method

.method public onFragmentDestroy()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 201
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1200
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->listAdapter:Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity;->listAdapter:Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1204
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingChatsActivity;->fixLayout()V

    .line 1205
    return-void
.end method
