.class Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PrivacySettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PrivacySettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PrivacySettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 416
    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 417
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 567
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->paymentsDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 570
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 571
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->paymentsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 572
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 573
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsP2PRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 574
    :cond_6
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 421
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 422
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 423
    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingGroupInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 424
    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingLastSeenInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 425
    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingCallsInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 426
    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingDeleteInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 427
    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsP2PRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 13
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v12, -0x1

    const v11, 0x7f0703eb

    const v7, 0x7f0200ac

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 461
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 463
    :pswitch_0
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 464
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_1

    .line 465
    const-string/jumbo v7, "BlockedUsers"

    const v9, 0x7f0700d3

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 466
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_2

    .line 467
    const-string/jumbo v7, "SessionsTitle"

    const v8, 0x7f07065e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_3

    .line 469
    const-string/jumbo v7, "TwoStepVerification"

    const v9, 0x7f0706f9

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_4

    .line 471
    const-string/jumbo v7, "Passcode"

    const v9, 0x7f070527

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 472
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_6

    .line 474
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ContactsController;->getLoadingLastSeenInfo()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 475
    const-string/jumbo v7, "Loading"

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 479
    .local v6, "value":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "PrivacyLastSeen"

    const v9, 0x7f0705a2

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 477
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # invokes: Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(I)Ljava/lang/String;
    invoke-static {v7, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1600(Lorg/telegram/ui/PrivacySettingsActivity;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_1

    .line 480
    .end local v6    # "value":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_8

    .line 482
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ContactsController;->getLoadingCallsInfo()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 483
    const-string/jumbo v7, "Loading"

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 487
    .restart local v6    # "value":Ljava/lang/String;
    :goto_2
    const-string/jumbo v7, "Calls"

    const v9, 0x7f070102

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 485
    .end local v6    # "value":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    const/4 v9, 0x2

    # invokes: Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(I)Ljava/lang/String;
    invoke-static {v7, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1600(Lorg/telegram/ui/PrivacySettingsActivity;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_2

    .line 488
    .end local v6    # "value":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_a

    .line 490
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ContactsController;->getLoadingGroupInfo()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 491
    const-string/jumbo v7, "Loading"

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 495
    .restart local v6    # "value":Ljava/lang/String;
    :goto_3
    const-string/jumbo v7, "GroupsAndChannels"

    const v8, 0x7f070344

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 493
    .end local v6    # "value":Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # invokes: Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1600(Lorg/telegram/ui/PrivacySettingsActivity;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_3

    .line 496
    .end local v6    # "value":Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_e

    .line 498
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ContactsController;->getLoadingDeleteInfo()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 499
    const-string/jumbo v7, "Loading"

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 510
    .restart local v6    # "value":Ljava/lang/String;
    :goto_4
    const-string/jumbo v7, "DeleteAccountIfAwayFor"

    const v8, 0x7f070201

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 501
    .end local v6    # "value":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ContactsController;->getDeleteAccountTTL()I

    move-result v5

    .line 502
    .local v5, "ttl":I
    const/16 v7, 0xb6

    if-gt v5, v7, :cond_c

    .line 503
    const-string/jumbo v7, "Months"

    div-int/lit8 v8, v5, 0x1e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_4

    .line 504
    .end local v6    # "value":Ljava/lang/String;
    :cond_c
    const/16 v7, 0x16d

    if-ne v5, v7, :cond_d

    .line 505
    const-string/jumbo v7, "Years"

    div-int/lit16 v8, v5, 0x16d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_4

    .line 507
    .end local v6    # "value":Ljava/lang/String;
    :cond_d
    const-string/jumbo v7, "Days"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_4

    .line 511
    .end local v5    # "ttl":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_e
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_0

    .line 512
    const-string/jumbo v7, "PrivacyPaymentsClear"

    const v8, 0x7f0705a4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 516
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_1
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 517
    .local v2, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_f

    .line 518
    const-string/jumbo v8, "DeleteAccountHelp"

    const v9, 0x7f070200

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "windowBackgroundGrayShadow"

    invoke-static {v8, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 520
    :cond_f
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_10

    .line 521
    const-string/jumbo v8, "GroupsAndChannelsHelp"

    const v9, 0x7f070345

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "windowBackgroundGrayShadow"

    invoke-static {v8, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 523
    :cond_10
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_11

    .line 524
    const-string/jumbo v8, "SessionsInfo"

    const v9, 0x7f07065d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "windowBackgroundGrayShadow"

    invoke-static {v8, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 526
    :cond_11
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_13

    .line 527
    const-string/jumbo v8, ""

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsSectionRow:I
    invoke-static {v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v9

    if-ne v9, v12, :cond_12

    const v7, 0x7f0200ad

    :cond_12
    const-string/jumbo v9, "windowBackgroundGrayShadow"

    invoke-static {v8, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 529
    :cond_13
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->paymentsDetailRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_15

    .line 530
    const-string/jumbo v8, "PrivacyPaymentsClearInfo"

    const v9, 0x7f0705a5

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I
    invoke-static {v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v9

    if-ne v9, v12, :cond_14

    iget-object v9, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsSectionRow:I
    invoke-static {v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v9

    if-ne v9, v12, :cond_14

    const v7, 0x7f0200ad

    :cond_14
    const-string/jumbo v9, "windowBackgroundGrayShadow"

    invoke-static {v8, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 532
    :cond_15
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsDetailRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_0

    .line 533
    const-string/jumbo v7, "PrivacyCallsP2PHelp"

    const v8, 0x7f07059d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0200ad

    const-string/jumbo v9, "windowBackgroundGrayShadow"

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 538
    .end local v2    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_2
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 539
    .local v0, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_16

    .line 540
    const-string/jumbo v7, "PrivacyTitle"

    const v8, 0x7f0705a9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :cond_16
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_17

    .line 542
    const-string/jumbo v7, "SecurityTitle"

    const v8, 0x7f070636

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 543
    :cond_17
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountSectionRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_18

    .line 544
    const-string/jumbo v7, "DeleteAccountTitle"

    const v8, 0x7f070203

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 545
    :cond_18
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_19

    .line 546
    const-string/jumbo v7, "SecretChat"

    const v8, 0x7f070631

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 547
    :cond_19
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->paymentsSectionRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_1a

    .line 548
    const-string/jumbo v7, "PrivacyPayments"

    const v8, 0x7f0705a3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 549
    :cond_1a
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsSectionRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_0

    .line 550
    const-string/jumbo v7, "Calls"

    const v8, 0x7f070102

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 554
    .end local v0    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_3
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 555
    .local v4, "textCheckCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_1c

    .line 556
    const-string/jumbo v7, "SecretWebPage"

    const v10, 0x7f070634

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v7, v8, :cond_1b

    move v7, v8

    :goto_5
    invoke-virtual {v4, v10, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_1b
    move v7, v9

    goto :goto_5

    .line 557
    :cond_1c
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsP2PRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_0

    .line 558
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 559
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "PrivacyCallsP2PTitle"

    const v9, 0x7f07059e

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "calls_p2p"

    invoke-interface {v1, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v4, v7, v9, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 438
    packed-switch p2, :pswitch_data_0

    .line 452
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 453
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 456
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 440
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 441
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 444
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 445
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 447
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 448
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
