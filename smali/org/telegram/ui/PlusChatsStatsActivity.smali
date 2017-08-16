.class public Lorg/telegram/ui/PlusChatsStatsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PlusChatsStatsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static dialogsDidLoad:Z


# instance fields
.field private adminChannelsCount:I

.field private adminChannelsRow:I

.field private adminGroupsCount:I

.field private adminGroupsRow:I

.field private adminHeaderDividerRow:I

.field private adminHeaderRow:I

.field private adminSuperGroupsCount:I

.field private adminSuperGroupsRow:I

.field private arrayIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arrayType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private botsCount:I

.field private channelsCount:I

.field private count:I

.field private dismissProgressRunnable:Ljava/lang/Runnable;

.field private favsCount:I

.field private groupsCount:I

.field private listAdapter:Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;

.field private loadChatQ:I

.field private loadSize:I

.field private other:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field private otherCount:I

.field private otherPosition:I

.field private ownChannelsCount:I

.field private ownChannelsRow:I

.field private ownGroupsCount:I

.field private ownGroupsRow:I

.field private ownHeaderDividerRow:I

.field private ownHeaderRow:I

.field private ownSuperGroupsCount:I

.field private ownSuperGroupsRow:I

.field private pDialog:Landroid/app/ProgressDialog;

.field private progressCancelled:Z

.field private rowCount:I

.field private secretsCount:I

.field private superGroupsCount:I

.field private totalBotsRow:I

.field private totalChannelsRow:I

.field private totalChatsCount:I

.field private totalFavsRow:I

.field private totalGroupsRow:I

.field private totalHeaderRow:I

.field private totalOtherRow:I

.field private totalRow:I

.field private totalSecretsRow:I

.field private totalSuperGroupsRow:I

.field private totalUsersRow:I

.field private usersCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->other:Ljava/util/ArrayList;

    .line 74
    const/16 v0, 0x64

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->loadChatQ:I

    .line 792
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PlusChatsStatsActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->dismissProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PlusChatsStatsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->completeTask()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminSuperGroupsCount:I

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/PlusChatsStatsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminSuperGroupsCount:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminChannelsCount:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/PlusChatsStatsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminChannelsCount:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PlusChatsStatsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->updateOther()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PlusChatsStatsActivity;)Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->listAdapter:Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownGroupsRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PlusChatsStatsActivity;->showChats(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownSuperGroupsRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownChannelsRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminGroupsRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminSuperGroupsRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->loadSize:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminChannelsRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalSecretsRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PlusChatsStatsActivity;->showSecrets(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalOtherRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->otherCount:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PlusChatsStatsActivity;->showOther(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PlusChatsStatsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->loadChatQ:I

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 61
    sput-boolean p0, Lorg/telegram/ui/PlusChatsStatsActivity;->dialogsDidLoad:Z

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PlusChatsStatsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalChatsCount:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PlusChatsStatsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayType:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PlusChatsStatsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PlusChatsStatsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalHeaderRow:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalRow:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalUsersRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalGroupsRow:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalSuperGroupsRow:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalChannelsRow:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalBotsRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PlusChatsStatsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->other:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalFavsRow:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownHeaderDividerRow:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownHeaderRow:I

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminHeaderDividerRow:I

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminHeaderRow:I

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PlusChatsStatsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->progressCancelled:Z

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->usersCount:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->groupsCount:I

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->superGroupsCount:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->secretsCount:I

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->channelsCount:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/PlusChatsStatsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->secretsCount:I

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->botsCount:I

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->favsCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownGroupsCount:I

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/PlusChatsStatsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownGroupsCount:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownSuperGroupsCount:I

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/PlusChatsStatsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownSuperGroupsCount:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownChannelsCount:I

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/PlusChatsStatsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownChannelsCount:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/PlusChatsStatsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminGroupsCount:I

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/PlusChatsStatsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusChatsStatsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminGroupsCount:I

    return p1
.end method

.method private completeTask()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->dismissProgress()V

    .line 191
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->loadAll()V

    .line 192
    return-void
.end method

.method private dismissProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->dismissProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 208
    iput-object v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->dismissProgressRunnable:Ljava/lang/Runnable;

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->pDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 213
    iput-object v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 216
    :cond_1
    return-void
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PlusChatsStatsActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PlusChatsStatsActivity$9;-><init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private loadAdminChats()V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lorg/telegram/ui/PlusChatsStatsActivity$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PlusChatsStatsActivity$2;-><init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method

.method private loadAll()V
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalChatsCount:I

    .line 221
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->usersCount:I

    .line 222
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->groupsCount:I

    .line 223
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->superGroupsCount:I

    .line 224
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->channelsCount:I

    .line 225
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->botsCount:I

    .line 226
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->favsCount:I

    .line 231
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->loadAdminChats()V

    .line 233
    return-void
.end method

.method private showChats(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "dlgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v8, 0x1

    .line 538
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayIds:Ljava/util/List;

    .line 542
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 543
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 544
    .local v4, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v9, 0x20

    shr-long/2addr v10, v9

    long-to-int v5, v10

    .line 545
    .local v5, "high_id":I
    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    .line 546
    .local v7, "lower_id":I
    const/4 v3, 0x0

    .line 547
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/4 v6, 0x0

    .line 548
    .local v6, "isPublic":Z
    if-eqz v7, :cond_0

    if-eq v5, v8, :cond_0

    .line 549
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    neg-int v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 550
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    move v6, v8

    .line 552
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 553
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, ""

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v9, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayIds:Ljava/util/List;

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 553
    :cond_3
    if-eqz v6, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "ChannelTypePublic"

    const v12, 0x7f07016b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    const-string/jumbo v9, ""

    goto :goto_2

    .line 560
    .end local v3    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v4    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v5    # "high_id":I
    .end local v6    # "isPublic":Z
    .end local v7    # "lower_id":I
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    new-instance v9, Lorg/telegram/ui/PlusChatsStatsActivity$6;

    invoke-direct {v9, p0}, Lorg/telegram/ui/PlusChatsStatsActivity$6;-><init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    const-string/jumbo v8, "OK"

    const v9, 0x7f0704f5

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 571
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/ui/PlusChatsStatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 572
    return-void
.end method

.method private showOther(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p2, "dlgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 712
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 713
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayIds:Ljava/util/List;

    .line 715
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayType:Ljava/util/List;

    .line 716
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 717
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 718
    .local v3, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v4, v6

    .line 719
    .local v4, "high_id":I
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v5, v6

    .line 721
    .local v5, "lower_id":I
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    .line 722
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayIds:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v7, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayType:Ljava/util/List;

    if-gez v5, :cond_0

    const-string/jumbo v6, "chat_id"

    :goto_1
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :cond_0
    const-string/jumbo v6, "user_id"

    goto :goto_1

    .line 726
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayIds:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayType:Ljava/util/List;

    const-string/jumbo v7, "enc_id"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 734
    .end local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v4    # "high_id":I
    .end local v5    # "lower_id":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    new-instance v7, Lorg/telegram/ui/PlusChatsStatsActivity$8;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PlusChatsStatsActivity$8;-><init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 744
    const-string/jumbo v6, "OK"

    const v7, 0x7f0704f5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 745
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/ui/PlusChatsStatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 746
    return-void
.end method

.method private showSecrets(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 674
    .local p2, "dlgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 675
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayIds:Ljava/util/List;

    .line 678
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 679
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 680
    .local v3, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v6, v8

    .line 681
    .local v6, "lower_id":I
    if-nez v6, :cond_0

    .line 682
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    long-to-int v5, v8

    .line 683
    .local v5, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    .line 684
    .local v4, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v4, :cond_0

    .line 685
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v9, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 686
    .local v7, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v7, :cond_0

    .line 687
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    instance-of v8, v4, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v8, :cond_1

    const-string/jumbo v8, ""

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v8, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->arrayIds:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    .end local v4    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v5    # "high_id":I
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    .restart local v4    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v5    # "high_id":I
    .restart local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "Cancelled"

    const v11, 0x7f07010b

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 696
    .end local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v4    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v5    # "high_id":I
    .end local v6    # "lower_id":I
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    new-instance v9, Lorg/telegram/ui/PlusChatsStatsActivity$7;

    invoke-direct {v9, p0}, Lorg/telegram/ui/PlusChatsStatsActivity$7;-><init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 706
    const-string/jumbo v8, "OK"

    const v9, 0x7f0704f5

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 707
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/ui/PlusChatsStatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 708
    return-void
.end method

.method private updateCounters()V
    .locals 6

    .prologue
    .line 325
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "chatsstats"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 326
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "totalChatsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalChatsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 328
    const-string/jumbo v2, "usersCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->usersCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 329
    const-string/jumbo v2, "groupsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->groupsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    const-string/jumbo v2, "superGroupsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->superGroupsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 331
    const-string/jumbo v2, "channelsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->channelsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 332
    const-string/jumbo v2, "botsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->botsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 333
    const-string/jumbo v2, "favsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->favsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 334
    const-string/jumbo v2, "secretsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->secretsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 335
    const-string/jumbo v2, "ownGroupsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownGroupsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 336
    const-string/jumbo v2, "ownSuperGroupsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownSuperGroupsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 337
    const-string/jumbo v2, "ownChannelsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownChannelsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 338
    const-string/jumbo v2, "adminGroupsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminGroupsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 339
    const-string/jumbo v2, "adminSuperGroupsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminSuperGroupsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 340
    const-string/jumbo v2, "adminChannelsCount"

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminChannelsCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 341
    const-string/jumbo v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 343
    return-void
.end method

.method private updateOther()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->other:Ljava/util/ArrayList;

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->other:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->other:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->other:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->other:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->other:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->other:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->otherCount:I

    .line 354
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->usersCount:I

    iget v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->groupsCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->superGroupsCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->channelsCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->botsCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalChatsCount:I

    .line 355
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->otherCount:I

    if-gtz v0, :cond_0

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalOtherRow:I

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->otherPosition:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalOtherRow:I

    goto :goto_0
.end method

.method private updateTheme()V
    .locals 5

    .prologue
    .line 760
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 761
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 762
    invoke-virtual {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 763
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 764
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 766
    invoke-virtual {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 767
    .local v1, "other":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 768
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 769
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v7, 0x7f0200bc

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 414
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 415
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 417
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v7, "ChatsCounters"

    const v8, 0x7f070189

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "chatsstats"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 419
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "time"

    const-wide/16 v8, -0x1

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 420
    .local v4, "t":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    .line 422
    :try_start_0
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<small>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "LastAccess"

    const v9, 0x7f0707c5

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "HH:mm:ss dd-MM-yyyy"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</small>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v7, Lorg/telegram/ui/PlusChatsStatsActivity$3;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PlusChatsStatsActivity$3;-><init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 436
    new-instance v6, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;-><init>(Lorg/telegram/ui/PlusChatsStatsActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->listAdapter:Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;

    .line 438
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->fragmentView:Landroid/view/View;

    .line 439
    iget-object v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 441
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 443
    .local v2, "listView":Landroid/widget/ListView;
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v6, :cond_2

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 444
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 445
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 446
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 448
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->listAdapter:Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 451
    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x33

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 454
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->pDialog:Landroid/app/ProgressDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 455
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->pDialog:Landroid/app/ProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 456
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 467
    new-instance v6, Lorg/telegram/ui/PlusChatsStatsActivity$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PlusChatsStatsActivity$4;-><init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 507
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lorg/telegram/ui/PlusChatsStatsActivity;->dialogsDidLoad:Z

    if-nez v6, :cond_3

    .line 508
    new-instance v6, Lorg/telegram/ui/PlusChatsStatsActivity$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PlusChatsStatsActivity$5;-><init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V

    const-wide/16 v8, 0xc8

    invoke-static {v6, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 523
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 525
    iget-object v6, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->fragmentView:Landroid/view/View;

    return-object v6

    .line 423
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "listView":Landroid/widget/ListView;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v2    # "listView":Landroid/widget/ListView;
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->loadAll()V

    goto :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 124
    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, v2, :cond_2

    .line 130
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 131
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-nez v2, :cond_2

    .line 132
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->progressCancelled:Z

    if-nez v2, :cond_3

    .line 133
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 134
    .local v0, "size":I
    iget v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->loadChatQ:I

    int-to-double v2, v2

    iget v4, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->loadChatQ:I

    div-int v4, v0, v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->count:I

    .line 136
    iget v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->loadSize:I

    if-ge v2, v0, :cond_2

    .line 137
    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->loadSize:I

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Loading"

    const v4, 0x7f0703eb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "title":Ljava/lang/CharSequence;
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->pDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v3, -0x1

    iget v4, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->loadChatQ:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 143
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->dismissProgressRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->dismissProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 146
    :cond_1
    new-instance v2, Lorg/telegram/ui/PlusChatsStatsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PlusChatsStatsActivity$1;-><init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V

    iput-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->dismissProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 187
    .end local v0    # "size":I
    .end local v1    # "title":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void

    .line 157
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->completeTask()V

    goto :goto_0

    .line 184
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->completeTask()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->progressCancelled:Z

    .line 531
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->dismissProgress()V

    .line 532
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->loadAll()V

    .line 533
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 773
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 774
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->fixLayout()V

    .line 775
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 364
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 366
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    .line 369
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalHeaderRow:I

    .line 370
    iput v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalRow:I

    .line 371
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalUsersRow:I

    .line 372
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalGroupsRow:I

    .line 373
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalSuperGroupsRow:I

    .line 374
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalChannelsRow:I

    .line 375
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalBotsRow:I

    .line 376
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalSecretsRow:I

    .line 377
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->otherPosition:I

    .line 378
    iput v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalOtherRow:I

    .line 379
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->totalFavsRow:I

    .line 381
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownHeaderDividerRow:I

    .line 382
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownHeaderRow:I

    .line 383
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownGroupsRow:I

    .line 384
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownSuperGroupsRow:I

    .line 385
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->ownChannelsRow:I

    .line 387
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminHeaderDividerRow:I

    .line 388
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminHeaderRow:I

    .line 389
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminGroupsRow:I

    .line 390
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminSuperGroupsRow:I

    .line 391
    iget v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->adminChannelsRow:I

    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 399
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->dismissProgress()V

    .line 400
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 401
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->updateCounters()V

    .line 407
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 750
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->listAdapter:Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity;->listAdapter:Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 755
    :cond_0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->updateTheme()V

    .line 756
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PlusChatsStatsActivity;->fixLayout()V

    .line 757
    return-void
.end method
