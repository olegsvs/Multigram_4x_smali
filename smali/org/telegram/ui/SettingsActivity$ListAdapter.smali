.class Lorg/telegram/ui/SettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1268
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1269
    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 1270
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$4600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x2

    .line 1491
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->emptyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->overscrollRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 1492
    :cond_0
    const/4 v0, 0x0

    .line 1507
    :cond_1
    :goto_0
    return v0

    .line 1494
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->settingsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->supportSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->messagesSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 1495
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1496
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->customTabsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->directShareRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->dumpCallStatsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 1497
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 1498
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->notificationRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->themeRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->backgroundRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->textSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->languageRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->stickersRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->emojiRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->dataRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 1500
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->versionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 1501
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1502
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->usernameRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->bioRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_9

    .line 1503
    :cond_8
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 1504
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->settingsSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->messagesSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->supportSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1505
    :cond_a
    const/4 v0, 0x4

    goto/16 :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1418
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1419
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->textSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->notificationRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->backgroundRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1420
    # getter for: Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1421
    # getter for: Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->languageRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->usernameRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->bioRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1422
    # getter for: Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1423
    # getter for: Lorg/telegram/ui/SettingsActivity;->stickersRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->customTabsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->directShareRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->versionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1424
    # getter for: Lorg/telegram/ui/SettingsActivity;->emojiRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->dataRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->themeRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->dumpCallStatsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 15
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1279
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1414
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1281
    :pswitch_1
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->overscrollRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$4700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 1282
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v3, 0x42b00000    # 88.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .line 1284
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .line 1289
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1290
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->textSizeRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 1291
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1292
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "fons_size"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x12

    :goto_1
    invoke-interface {v8, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1293
    .local v9, "size":I
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_2

    .line 1294
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1295
    .local v11, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "chatTextSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x12

    :goto_2
    invoke-interface {v11, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1297
    .end local v11    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_2
    const-string/jumbo v2, "TextSize"

    const v3, 0x7f0706d6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1292
    .end local v9    # "size":I
    :cond_3
    const/16 v2, 0x10

    goto :goto_1

    .line 1295
    .restart local v9    # "size":I
    .restart local v11    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_4
    const/16 v2, 0x10

    goto :goto_2

    .line 1298
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v9    # "size":I
    .end local v11    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->languageRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 1299
    const-string/jumbo v2, "Language"

    const v3, 0x7f0703b2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1300
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->themeRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 1301
    const-string/jumbo v2, "Theme"

    const v3, 0x7f0706d7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentThemeName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1302
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 1304
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1305
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "sortContactsBy"

    const/4 v3, 0x0

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1306
    .local v10, "sort":I
    if-nez v10, :cond_8

    .line 1307
    const-string/jumbo v2, "Default"

    const v3, 0x7f0701fd

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1313
    .local v14, "value":Ljava/lang/String;
    :goto_3
    const-string/jumbo v2, "SortBy"

    const v3, 0x7f0706a6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v14, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1308
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    if-ne v10, v2, :cond_9

    .line 1309
    const-string/jumbo v2, "FirstName"

    const v3, 0x7f0706aa

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/String;
    goto :goto_3

    .line 1311
    .end local v14    # "value":Ljava/lang/String;
    :cond_9
    const-string/jumbo v2, "LastName"

    const v3, 0x7f0706ab

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/String;
    goto :goto_3

    .line 1314
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v10    # "sort":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->notificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 1315
    const-string/jumbo v2, "NotificationsAndSounds"

    const v3, 0x7f0704dd

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1316
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->backgroundRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_c

    .line 1317
    const-string/jumbo v2, "ChatBackground"

    const v3, 0x7f070176

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1318
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_d

    .line 1319
    const-string/jumbo v2, "SendLogs"

    const v3, 0x7f070647

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1320
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_e

    .line 1321
    const-string/jumbo v2, "ClearLogs"

    const v3, 0x7f070195

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1322
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_f

    .line 1323
    const-string/jumbo v2, "AskAQuestion"

    const v3, 0x7f0700a3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1324
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_10

    .line 1325
    const-string/jumbo v2, "PrivacySettings"

    const v3, 0x7f0705a8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1326
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->dataRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_11

    .line 1327
    const-string/jumbo v2, "DataSettings"

    const v3, 0x7f0701e9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1328
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_12

    .line 1329
    const-string/jumbo v2, "Switch Backend"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1330
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_13

    .line 1331
    const-string/jumbo v2, "TelegramFAQ"

    const v3, 0x7f0706ce

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1332
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_14

    .line 1333
    const-string/jumbo v2, "ImportContacts"

    const v3, 0x7f070379

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1334
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->stickersRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_16

    .line 1335
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1336
    .local v7, "count":I
    const-string/jumbo v2, "StickersName"

    const v3, 0x7f0706b6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_15

    const-string/jumbo v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v2, ""

    goto :goto_4

    .line 1337
    .end local v7    # "count":I
    :cond_16
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_17

    .line 1338
    const-string/jumbo v2, "PrivacyPolicy"

    const v3, 0x7f0705a6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1339
    :cond_17
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->emojiRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 1340
    const-string/jumbo v2, "Emoji"

    const v3, 0x7f070256

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1345
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1346
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1347
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_18

    .line 1348
    const-string/jumbo v2, "EnableAnimations"

    const v3, 0x7f07025e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "view_animations"

    const/4 v4, 0x1

    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1349
    :cond_18
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_19

    .line 1350
    const-string/jumbo v2, "SendByEnter"

    const v3, 0x7f07063f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "send_by_enter"

    const/4 v4, 0x0

    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1351
    :cond_19
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1a

    .line 1352
    const-string/jumbo v2, "SaveToGallerySettings"

    const v3, 0x7f070615

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->canSaveToGallery()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1353
    :cond_1a
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1b

    .line 1354
    const-string/jumbo v2, "AutoplayGifs"

    const v3, 0x7f0700c5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->canAutoplayGifs()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1355
    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1c

    .line 1356
    const-string/jumbo v2, "RaiseToSpeak"

    const v3, 0x7f0705b7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->canRaiseToSpeak()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1357
    :cond_1c
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->customTabsRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1d

    .line 1358
    const-string/jumbo v2, "ChromeCustomTabs"

    const v3, 0x7f070190

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ChromeCustomTabsInfo"

    const v4, 0x7f070191

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_0

    .line 1359
    :cond_1d
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->directShareRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1e

    .line 1360
    const-string/jumbo v2, "DirectShare"

    const v3, 0x7f07021e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DirectShareInfo"

    const v4, 0x7f07021f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->canDirectShare()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_0

    .line 1361
    :cond_1e
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->dumpCallStatsRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 1362
    const-string/jumbo v2, "Dump detailed call stats"

    const-string/jumbo v3, "dbg_dump_call_stats"

    const/4 v4, 0x0

    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1367
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_4
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->settingsSectionRow2:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$4800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1f

    .line 1368
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v3, "SETTINGS"

    const v4, 0x7f070606

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1369
    :cond_1f
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->supportSectionRow2:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$4900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_20

    .line 1370
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v3, "Support"

    const v4, 0x7f0706c3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1371
    :cond_20
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->messagesSectionRow2:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$5000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_21

    .line 1372
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v3, "MessagesSettings"

    const v4, 0x7f07042c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1373
    :cond_21
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberSectionRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$5100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 1374
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v3, "Info"

    const v4, 0x7f070383

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1379
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 1381
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_23

    .line 1382
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 1384
    .local v12, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v12, :cond_22

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    .line 1385
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1389
    .restart local v14    # "value":Ljava/lang/String;
    :goto_5
    const-string/jumbo v2, "Phone"

    const v3, 0x7f07056f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v14, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1387
    .end local v14    # "value":Ljava/lang/String;
    :cond_22
    const-string/jumbo v2, "NumberUnknown"

    const v3, 0x7f0704f4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/String;
    goto :goto_5

    .line 1390
    .end local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v14    # "value":Ljava/lang/String;
    :cond_23
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->usernameRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_25

    .line 1391
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 1393
    .restart local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v12, :cond_24

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1398
    .restart local v14    # "value":Ljava/lang/String;
    :goto_6
    const-string/jumbo v2, "Username"

    const v3, 0x7f07072c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v14, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1396
    .end local v14    # "value":Ljava/lang/String;
    :cond_24
    const-string/jumbo v2, "UsernameEmpty"

    const v3, 0x7f07072f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/String;
    goto :goto_6

    .line 1399
    .end local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v14    # "value":Ljava/lang/String;
    :cond_25
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->bioRow:I
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 1400
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v13

    .line 1402
    .local v13, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    if-nez v13, :cond_26

    .line 1403
    const-string/jumbo v2, "Loading"

    const v3, 0x7f0703eb

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1409
    .restart local v14    # "value":Ljava/lang/String;
    :goto_7
    const-string/jumbo v2, "UserBio"

    const v3, 0x7f07071c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1404
    .end local v14    # "value":Ljava/lang/String;
    :cond_26
    if-eqz v13, :cond_27

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1405
    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    .restart local v14    # "value":Ljava/lang/String;
    goto :goto_7

    .line 1407
    .end local v14    # "value":Ljava/lang/String;
    :cond_27
    const-string/jumbo v2, "UserBioEmpty"

    const v3, 0x7f07071d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/String;
    goto :goto_7

    .line 1279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 12
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1429
    const/4 v5, 0x0

    .line 1430
    .local v5, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 1485
    :cond_0
    :goto_0
    new-instance v6, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1486
    new-instance v6, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v6

    .line 1432
    :pswitch_0
    new-instance v5, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .line 1433
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1436
    :pswitch_1
    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1437
    .restart local v5    # "view":Landroid/view/View;
    goto :goto_0

    .line 1439
    :pswitch_2
    new-instance v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1440
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1443
    :pswitch_3
    new-instance v5, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1444
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1447
    :pswitch_4
    new-instance v5, Lorg/telegram/ui/Cells/HeaderCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1448
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1451
    :pswitch_5
    new-instance v5, Lorg/telegram/ui/Cells/TextInfoCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextInfoCell;-><init>(Landroid/content/Context;)V

    .line 1452
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1454
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1455
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1456
    .local v2, "code":I
    const-string/jumbo v1, ""

    .line 1457
    .local v1, "abi":Ljava/lang/String;
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v6, v6, 0xa

    packed-switch v6, :pswitch_data_1

    .line 1474
    :goto_1
    move-object v0, v5

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoCell;

    move-object v6, v0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TelegramForAndroid"

    const v10, 0x7f0706d0

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\nv%s (%d) %s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/TextInfoCell;->setText(Ljava/lang/String;)V

    .line 1475
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v6, :cond_0

    move-object v0, v5

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoCell;

    move-object v6, v0

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefSectionColor:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/TextInfoCell;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1476
    .end local v1    # "abi":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 1477
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1459
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "abi":Ljava/lang/String;
    .restart local v2    # "code":I
    .restart local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :pswitch_6
    :try_start_1
    const-string/jumbo v1, "arm"

    .line 1460
    goto :goto_1

    .line 1463
    :pswitch_7
    const-string/jumbo v1, "arm-v7a"

    .line 1464
    goto :goto_1

    .line 1467
    :pswitch_8
    const-string/jumbo v1, "x86"

    .line 1468
    goto :goto_1

    .line 1470
    :pswitch_9
    const-string/jumbo v1, "universal"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1481
    .end local v1    # "abi":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :pswitch_a
    new-instance v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1482
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
    .end packed-switch

    .line 1457
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
