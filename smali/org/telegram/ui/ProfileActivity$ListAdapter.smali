.class Lorg/telegram/ui/ProfileActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 3228
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 3229
    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 3230
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 3620
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$8700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 3625
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 3644
    :cond_0
    :goto_0
    return v0

    .line 3627
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->userSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 3628
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3629
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->phoneRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->usernameRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelNameRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoDetailedRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 3630
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 3631
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->convertRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->addMemberRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedFilesRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMusicRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedLinksRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 3632
    :cond_6
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 3633
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-le p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersEndRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 3634
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 3635
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_9

    .line 3636
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 3637
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 3638
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 3639
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_b

    .line 3640
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 3641
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3642
    :cond_c
    const/16 v0, 0x8

    goto/16 :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3605
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 3606
    .local v0, "i":I
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 3607
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->phoneRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 3608
    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->usernameRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoDetailedRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$7800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 3609
    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedFilesRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMusicRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedLinksRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 3615
    :cond_1
    :goto_0
    return v1

    .line 3610
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 3611
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->convertRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-le v0, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersEndRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-lt v0, v3, :cond_4

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 3612
    # getter for: Lorg/telegram/ui/ProfileActivity;->addMemberRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelNameRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 3613
    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedFilesRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMusicRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedLinksRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v0, v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 36
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 3327
    const/4 v8, 0x1

    .line 3328
    .local v8, "checkBackground":Z
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v30, "theme"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 3329
    .local v22, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v29

    packed-switch v29, :pswitch_data_0

    .line 3601
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3331
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$7600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 3332
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v29, v0

    check-cast v29, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v30, 0x41000000    # 8.0f

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .line 3334
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v29, v0

    check-cast v29, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v30, 0x42100000    # 36.0f

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .line 3338
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/telegram/ui/Cells/TextDetailCell;

    .line 3339
    .local v21, "textDetailCell":Lorg/telegram/ui/Cells/TextDetailCell;
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setMultiline(Z)V

    .line 3340
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_3

    .line 3341
    sget v29, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextColor(I)V

    .line 3342
    sget v29, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setValueColor(I)V

    .line 3343
    sget v29, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setIconColor(I)V

    .line 3345
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->phoneRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 3347
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    .line 3348
    .local v23, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-eqz v29, :cond_4

    .line 3349
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "+"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3353
    .local v19, "text":Ljava/lang/String;
    :goto_1
    const-string/jumbo v29, "PhoneMobile"

    const v30, 0x7f070573

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    const v30, 0x7f020225

    const/16 v31, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 3351
    .end local v19    # "text":Ljava/lang/String;
    :cond_4
    const-string/jumbo v29, "NumberUnknown"

    const v30, 0x7f0704f4

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "text":Ljava/lang/String;
    goto :goto_1

    .line 3354
    .end local v19    # "text":Ljava/lang/String;
    .end local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->usernameRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$2600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 3356
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    .line 3357
    .restart local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_6

    .line 3358
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "@"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3362
    .restart local v19    # "text":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->phoneRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoDetailedRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$7800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 3363
    const-string/jumbo v29, "Username"

    const v30, 0x7f07072c

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    const v30, 0x7f020223

    const/16 v31, 0xb

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 3360
    .end local v19    # "text":Ljava/lang/String;
    :cond_6
    const-string/jumbo v19, "-"

    .restart local v19    # "text":Ljava/lang/String;
    goto :goto_2

    .line 3365
    :cond_7
    const-string/jumbo v29, "Username"

    const v30, 0x7f07072c

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3367
    .end local v19    # "text":Ljava/lang/String;
    .end local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelNameRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 3369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v29

    if-eqz v29, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 3370
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "@"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3374
    .restart local v19    # "text":Ljava/lang/String;
    :goto_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3372
    .end local v19    # "text":Ljava/lang/String;
    :cond_9
    const-string/jumbo v19, "-"

    .restart local v19    # "text":Ljava/lang/String;
    goto :goto_3

    .line 3375
    .end local v19    # "text":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoDetailedRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$7800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 3376
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v25

    .line 3377
    .local v25, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    const/16 v29, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setMultiline(Z)V

    .line 3378
    if-eqz v25, :cond_b

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    move-object/from16 v29, v0

    :goto_4
    const-string/jumbo v30, "UserBio"

    const v31, 0x7f07071c

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const v31, 0x7f020223

    const/16 v32, 0xb

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_b
    const/16 v29, 0x0

    goto :goto_4

    .line 3382
    .end local v21    # "textDetailCell":Lorg/telegram/ui/Cells/TextDetailCell;
    .end local v25    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Lorg/telegram/ui/Cells/TextCell;

    .line 3383
    .local v20, "textCell":Lorg/telegram/ui/Cells/TextCell;
    const-string/jumbo v29, "windowBackgroundWhiteBlackText"

    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 3384
    const-string/jumbo v29, "windowBackgroundWhiteBlackText"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 3385
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_c

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 3386
    :cond_c
    const-string/jumbo v29, "profileTitleColor"

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 3387
    .local v26, "vColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 3389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$7900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 3390
    const-string/jumbo v29, "Loading"

    const v30, 0x7f0703eb

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 3394
    .local v28, "value":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    if-eqz v29, :cond_f

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 3395
    const-string/jumbo v29, "SharedMedia"

    const v30, 0x7f07067f

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    const v30, 0x7f020224

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3399
    :goto_6
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    .line 3400
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    .line 3401
    sget v29, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setIconColor(I)V

    goto/16 :goto_0

    .line 3392
    .end local v28    # "value":Ljava/lang/String;
    :cond_d
    const-string/jumbo v30, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$7900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v34, -0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    :goto_7
    add-int v29, v29, v33

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "value":Ljava/lang/String;
    goto/16 :goto_5

    .end local v28    # "value":Ljava/lang/String;
    :cond_e
    const/16 v29, 0x0

    goto :goto_7

    .line 3397
    .restart local v28    # "value":Ljava/lang/String;
    :cond_f
    const-string/jumbo v29, "SharedMedia"

    const v30, 0x7f07067f

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 3403
    .end local v28    # "value":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedFilesRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    .line 3405
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalFilesCount:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 3406
    const-string/jumbo v29, "Loading"

    const v30, 0x7f0703eb

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 3410
    .restart local v28    # "value":Ljava/lang/String;
    :goto_8
    const-string/jumbo v29, "DocumentsTitle"

    const v30, 0x7f070233

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3411
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3408
    .end local v28    # "value":Ljava/lang/String;
    :cond_11
    const-string/jumbo v30, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalFilesCount:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalFilesCountMerge:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v34, -0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalFilesCountMerge:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    :goto_9
    add-int v29, v29, v33

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "value":Ljava/lang/String;
    goto :goto_8

    .end local v28    # "value":Ljava/lang/String;
    :cond_12
    const/16 v29, 0x0

    goto :goto_9

    .line 3412
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMusicRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 3414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMusicCount:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 3415
    const-string/jumbo v29, "Loading"

    const v30, 0x7f0703eb

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 3419
    .restart local v28    # "value":Ljava/lang/String;
    :goto_a
    const-string/jumbo v29, "AudioTitle"

    const v30, 0x7f0700bd

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3417
    .end local v28    # "value":Ljava/lang/String;
    :cond_14
    const-string/jumbo v30, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMusicCount:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMusicCountMerge:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v34, -0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMusicCountMerge:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    :goto_b
    add-int v29, v29, v33

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "value":Ljava/lang/String;
    goto :goto_a

    .end local v28    # "value":Ljava/lang/String;
    :cond_15
    const/16 v29, 0x0

    goto :goto_b

    .line 3421
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedLinksRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    .line 3423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalLinksCount:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    .line 3424
    const-string/jumbo v29, "Loading"

    const v30, 0x7f0703eb

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 3428
    .restart local v28    # "value":Ljava/lang/String;
    :goto_c
    const-string/jumbo v29, "LinksTitle"

    const v30, 0x7f0703e8

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3426
    .end local v28    # "value":Ljava/lang/String;
    :cond_17
    const-string/jumbo v30, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalLinksCount:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalLinksCountMerge:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    const/16 v34, -0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalLinksCountMerge:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$8600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    :goto_d
    add-int v29, v29, v33

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "value":Ljava/lang/String;
    goto :goto_c

    .end local v28    # "value":Ljava/lang/String;
    :cond_18
    const/16 v29, 0x0

    goto :goto_d

    .line 3430
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    .line 3431
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v25

    .line 3432
    .restart local v25    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    const-string/jumbo v29, "GroupsInCommon"

    const v30, 0x7f070346

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz v25, :cond_1a

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->common_chats_count:I

    move/from16 v29, v0

    :goto_e
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3432
    :cond_1a
    const/16 v29, 0x0

    goto :goto_e

    .line 3434
    .end local v25    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_1d

    .line 3435
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v30

    const/16 v32, 0x20

    shr-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v14

    .line 3437
    .local v14, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget v0, v14, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move/from16 v29, v0

    if-nez v29, :cond_1c

    .line 3438
    const-string/jumbo v29, "ShortMessageLifetimeForever"

    const v30, 0x7f070683

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 3442
    .restart local v28    # "value":Ljava/lang/String;
    :goto_f
    const-string/jumbo v29, "MessageLifetime"

    const v30, 0x7f07041f

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3443
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3440
    .end local v28    # "value":Ljava/lang/String;
    :cond_1c
    iget v0, v14, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "value":Ljava/lang/String;
    goto :goto_f

    .line 3444
    .end local v14    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v28    # "value":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_2e

    .line 3445
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v30, Lorg/telegram/messenger/AndroidUtilities;->Notifications:Ljava/lang/String;

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 3448
    .local v18, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_1e

    .line 3449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v12

    .line 3456
    .local v12, "did":J
    :goto_10
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "custom_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 3457
    .local v9, "custom":Z
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "notify2_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    .line 3458
    .local v15, "hasOverride":Z
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "notify2_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 3459
    .local v28, "value":I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "notifyuntil_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 3461
    .local v10, "delta":I
    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    const v29, 0x7fffffff

    move/from16 v0, v29

    if-eq v10, v0, :cond_25

    .line 3462
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v29

    sub-int v10, v10, v29

    .line 3463
    if-gtz v10, :cond_21

    .line 3464
    if-eqz v9, :cond_20

    .line 3465
    const-string/jumbo v29, "NotificationsCustom"

    const v30, 0x7f0704de

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 3502
    .local v27, "val":Ljava/lang/String;
    :goto_11
    if-eqz v27, :cond_2d

    .line 3503
    sget-object v29, Lorg/telegram/messenger/AndroidUtilities;->Notifications:Ljava/lang/String;

    const v30, 0x7f0704dc

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    const v30, 0x7f020224

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3507
    :goto_12
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    .line 3508
    sget v29, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setIconColor(I)V

    .line 3509
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3450
    .end local v9    # "custom":Z
    .end local v10    # "delta":I
    .end local v12    # "did":J
    .end local v15    # "hasOverride":Z
    .end local v27    # "val":Ljava/lang/String;
    .end local v28    # "value":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    if-eqz v29, :cond_1f

    .line 3451
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, v29

    int-to-long v12, v0

    .restart local v12    # "did":J
    goto/16 :goto_10

    .line 3453
    .end local v12    # "did":J
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v12, v0

    .restart local v12    # "did":J
    goto/16 :goto_10

    .line 3467
    .restart local v9    # "custom":Z
    .restart local v10    # "delta":I
    .restart local v15    # "hasOverride":Z
    .restart local v28    # "value":I
    :cond_20
    const-string/jumbo v29, "NotificationsOn"

    const v30, 0x7f0704e6

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "val":Ljava/lang/String;
    goto :goto_11

    .line 3469
    .end local v27    # "val":Ljava/lang/String;
    :cond_21
    const/16 v29, 0xe10

    move/from16 v0, v29

    if-ge v10, v0, :cond_22

    .line 3470
    const-string/jumbo v29, "WillUnmuteIn"

    const v30, 0x7f07077f

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "Minutes"

    div-int/lit8 v34, v10, 0x3c

    invoke-static/range {v33 .. v34}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "val":Ljava/lang/String;
    goto/16 :goto_11

    .line 3471
    .end local v27    # "val":Ljava/lang/String;
    :cond_22
    const v29, 0x15180

    move/from16 v0, v29

    if-ge v10, v0, :cond_23

    .line 3472
    const-string/jumbo v29, "WillUnmuteIn"

    const v30, 0x7f07077f

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "Hours"

    int-to-float v0, v10

    move/from16 v34, v0

    const/high16 v35, 0x42700000    # 60.0f

    div-float v34, v34, v35

    const/high16 v35, 0x42700000    # 60.0f

    div-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "val":Ljava/lang/String;
    goto/16 :goto_11

    .line 3473
    .end local v27    # "val":Ljava/lang/String;
    :cond_23
    const v29, 0x1e13380

    move/from16 v0, v29

    if-ge v10, v0, :cond_24

    .line 3474
    const-string/jumbo v29, "WillUnmuteIn"

    const v30, 0x7f07077f

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "Days"

    int-to-float v0, v10

    move/from16 v34, v0

    const/high16 v35, 0x42700000    # 60.0f

    div-float v34, v34, v35

    const/high16 v35, 0x42700000    # 60.0f

    div-float v34, v34, v35

    const/high16 v35, 0x41c00000    # 24.0f

    div-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "val":Ljava/lang/String;
    goto/16 :goto_11

    .line 3476
    .end local v27    # "val":Ljava/lang/String;
    :cond_24
    const/16 v27, 0x0

    .restart local v27    # "val":Ljava/lang/String;
    goto/16 :goto_11

    .line 3479
    .end local v27    # "val":Ljava/lang/String;
    :cond_25
    if-nez v28, :cond_28

    .line 3480
    if-eqz v15, :cond_26

    .line 3481
    const/4 v11, 0x1

    .line 3496
    .local v11, "enabled":Z
    :goto_13
    if-eqz v11, :cond_2b

    if-eqz v9, :cond_2b

    .line 3497
    const-string/jumbo v29, "NotificationsCustom"

    const v30, 0x7f0704de

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "val":Ljava/lang/String;
    goto/16 :goto_11

    .line 3483
    .end local v11    # "enabled":Z
    .end local v27    # "val":Ljava/lang/String;
    :cond_26
    long-to-int v0, v12

    move/from16 v29, v0

    if-gez v29, :cond_27

    .line 3484
    const-string/jumbo v29, "EnableGroup"

    const/16 v30, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .restart local v11    # "enabled":Z
    goto :goto_13

    .line 3486
    .end local v11    # "enabled":Z
    :cond_27
    const-string/jumbo v29, "EnableAll"

    const/16 v30, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .restart local v11    # "enabled":Z
    goto :goto_13

    .line 3489
    .end local v11    # "enabled":Z
    :cond_28
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_29

    .line 3490
    const/4 v11, 0x1

    .restart local v11    # "enabled":Z
    goto :goto_13

    .line 3491
    .end local v11    # "enabled":Z
    :cond_29
    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2a

    .line 3492
    const/4 v11, 0x0

    .restart local v11    # "enabled":Z
    goto :goto_13

    .line 3494
    .end local v11    # "enabled":Z
    :cond_2a
    const/4 v11, 0x0

    .restart local v11    # "enabled":Z
    goto :goto_13

    .line 3499
    :cond_2b
    if-eqz v11, :cond_2c

    const-string/jumbo v29, "NotificationsOn"

    const v30, 0x7f0704e6

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "val":Ljava/lang/String;
    :goto_14
    goto/16 :goto_11

    .end local v27    # "val":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v29, "NotificationsOff"

    const v30, 0x7f0704e5

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    goto :goto_14

    .line 3505
    .end local v11    # "enabled":Z
    .restart local v27    # "val":Ljava/lang/String;
    :cond_2d
    sget-object v29, Lorg/telegram/messenger/AndroidUtilities;->Notifications:Ljava/lang/String;

    const v30, 0x7f0704dc

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "NotificationsOff"

    const v31, 0x7f0704e5

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const v31, 0x7f020224

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_12

    .line 3511
    .end local v9    # "custom":Z
    .end local v10    # "delta":I
    .end local v12    # "did":J
    .end local v15    # "hasOverride":Z
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    .end local v27    # "val":Ljava/lang/String;
    .end local v28    # "value":I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_2f

    .line 3512
    const-string/jumbo v29, "StartEncryptedChat"

    const v30, 0x7f0706af

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    .line 3513
    const-string/jumbo v29, "windowBackgroundWhiteGreenText2"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 3514
    const-string/jumbo v29, "windowBackgroundWhiteGreenText2"

    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 3515
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    const-string/jumbo v29, "profileTitleColor"

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto/16 :goto_0

    .line 3516
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_30

    .line 3517
    new-instance v16, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    .line 3518
    .local v16, "identiconDrawable":Lorg/telegram/ui/Components/IdenticonDrawable;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v30

    const/16 v32, 0x20

    shr-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v14

    .line 3519
    .restart local v14    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/IdenticonDrawable;->setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 3520
    const-string/jumbo v29, "EncryptionKey"

    const v30, 0x7f07026f

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 3521
    .end local v14    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v16    # "identiconDrawable":Lorg/telegram/ui/Components/IdenticonDrawable;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_31

    .line 3522
    const-string/jumbo v29, "windowBackgroundWhiteRedText5"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 3523
    const-string/jumbo v29, "windowBackgroundWhiteRedText5"

    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 3524
    const-string/jumbo v29, "LeaveChannel"

    const v30, 0x7f0703d2

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    .line 3525
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    const-string/jumbo v29, "profileTitleColor"

    const v30, -0x12c2c7

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto/16 :goto_0

    .line 3526
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->convertRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_32

    .line 3527
    const-string/jumbo v29, "UpgradeGroup"

    const v30, 0x7f07070d

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    .line 3528
    const-string/jumbo v29, "windowBackgroundWhiteGreenText2"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 3529
    const-string/jumbo v29, "windowBackgroundWhiteGreenText2"

    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto/16 :goto_0

    .line 3530
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->addMemberRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_34

    .line 3531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    if-lez v29, :cond_33

    .line 3532
    const-string/jumbo v29, "AddMember"

    const v30, 0x7f070051

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3534
    :cond_33
    const-string/jumbo v29, "AddRecipient"

    const v30, 0x7f070053

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3536
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_36

    .line 3537
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v29

    if-eqz v29, :cond_35

    .line 3538
    const-string/jumbo v29, "ChannelMembers"

    const v30, 0x7f07013f

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "%d"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v33, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v33 .. v33}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3541
    :cond_35
    const-string/jumbo v29, "ChannelMembers"

    const v30, 0x7f07013f

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3543
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->addMemberRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 3544
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    if-lez v29, :cond_37

    .line 3545
    const-string/jumbo v29, "AddMember"

    const v30, 0x7f070051

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3547
    :cond_37
    const-string/jumbo v29, "AddRecipient"

    const v30, 0x7f070053

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3552
    .end local v20    # "textCell":Lorg/telegram/ui/Cells/TextCell;
    .end local v26    # "vColor":I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    check-cast v24, Lorg/telegram/ui/Cells/UserCell;

    .line 3554
    .local v24, "userCell":Lorg/telegram/ui/Cells/UserCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_38

    .line 3555
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v31

    sub-int v31, p2, v31

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 3559
    .local v17, "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_15
    if-eqz v17, :cond_0

    .line 3560
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    move/from16 v29, v0

    if-eqz v29, :cond_3b

    move-object/from16 v29, v17

    .line 3561
    check-cast v29, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    move-object/from16 v0, v29

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 3562
    .local v7, "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    move/from16 v29, v0

    if-eqz v29, :cond_39

    .line 3563
    const/16 v29, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    .line 3578
    .end local v7    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :goto_16
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v29

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_3e

    const v29, 0x7f020166

    :goto_17
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    .line 3557
    .end local v17    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    sub-int v30, p2, v30

    add-int/lit8 v30, v30, -0x1

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v17    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto/16 :goto_15

    .line 3564
    .restart local v7    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_39
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    move/from16 v29, v0

    if-eqz v29, :cond_3a

    .line 3565
    const/16 v29, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto :goto_16

    .line 3567
    :cond_3a
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto :goto_16

    .line 3570
    .end local v7    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_3b
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    move/from16 v29, v0

    if-eqz v29, :cond_3c

    .line 3571
    const/16 v29, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_16

    .line 3572
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3d

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    move/from16 v29, v0

    if-eqz v29, :cond_3d

    .line 3573
    const/16 v29, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_16

    .line 3575
    :cond_3d
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_16

    .line 3578
    :cond_3e
    const/16 v29, 0x0

    goto/16 :goto_17

    .line 3582
    .end local v17    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v24    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/AboutLinkCell;

    .line 3583
    .local v6, "aboutLinkCell":Lorg/telegram/ui/Cells/AboutLinkCell;
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_3f

    .line 3586
    sget v29, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setIconColor(I)V

    .line 3588
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_41

    .line 3589
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v25

    .line 3590
    .restart local v25    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    if-eqz v25, :cond_40

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    move-object/from16 v29, v0

    :goto_18
    const v30, 0x7f020223

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    :cond_40
    const/16 v29, 0x0

    goto :goto_18

    .line 3591
    .end local v25    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 3592
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 3593
    .restart local v19    # "text":Ljava/lang/String;
    :goto_19
    const-string/jumbo v29, "\n\n\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_42

    .line 3594
    const-string/jumbo v29, "\n\n\n"

    const-string/jumbo v30, "\n\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    goto :goto_19

    .line 3596
    :cond_42
    const v29, 0x7f020223

    const/16 v30, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v6, v0, v1, v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 3597
    sget-boolean v29, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v29, :cond_0

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setIconColor(I)V

    goto/16 :goto_0

    .line 3329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 11
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v7, 0x7f0200ac

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 3234
    const/4 v3, 0x0

    .line 3235
    .local v3, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 3321
    :cond_0
    :goto_0
    new-instance v4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v10, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3322
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v4

    .line 3237
    :pswitch_0
    new-instance v3, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .line 3238
    .restart local v3    # "view":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 3241
    :pswitch_1
    new-instance v3, Lorg/telegram/ui/Cells/DividerCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 3242
    .restart local v3    # "view":Landroid/view/View;
    const/high16 v4, 0x42900000    # 72.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 3243
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    .line 3244
    const-string/jumbo v4, "profileRowColor"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3245
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3246
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-lez v4, :cond_0

    const-string/jumbo v4, "Profile00"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 3250
    :pswitch_2
    new-instance v3, Lorg/telegram/ui/Cells/TextDetailCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;)V

    .line 3251
    .restart local v3    # "view":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 3252
    check-cast v4, Lorg/telegram/ui/Cells/TextDetailCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextColor(I)V

    move-object v4, v3

    .line 3253
    check-cast v4, Lorg/telegram/ui/Cells/TextDetailCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setValueColor(I)V

    .line 3255
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 3259
    :pswitch_3
    new-instance v3, Lorg/telegram/ui/Cells/TextCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 3260
    .restart local v3    # "view":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    .line 3261
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v4, v3

    .line 3262
    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto :goto_0

    .line 3266
    :pswitch_4
    new-instance v3, Lorg/telegram/ui/Cells/UserCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x3d

    invoke-direct {v3, v4, v5, v9, v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 3267
    .restart local v3    # "view":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    .line 3268
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3269
    const-string/jumbo v4, "Profile"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3274
    :pswitch_5
    new-instance v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v9}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Z)V

    .line 3275
    .restart local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3276
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v5, "windowBackgroundGray"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v4, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3277
    .local v1, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 3278
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3279
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    if-ne v4, v10, :cond_1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-lez v4, :cond_0

    :cond_1
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 3283
    .end local v1    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_6
    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .restart local v3    # "view":Landroid/view/View;
    move-object v0, v3

    .line 3284
    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 3285
    .local v0, "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3286
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v5, "windowBackgroundGray"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v4, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3287
    .restart local v1    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 3288
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3289
    const-string/jumbo v4, "ConvertGroupInfo"

    const v5, 0x7f0701c5

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Members"

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3290
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    if-ne v4, v10, :cond_2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-lez v4, :cond_0

    :cond_2
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 3294
    .end local v0    # "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    .end local v1    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_7
    new-instance v3, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 3295
    .restart local v3    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3297
    :pswitch_8
    new-instance v3, Lorg/telegram/ui/Cells/AboutLinkCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/AboutLinkCell;-><init>(Landroid/content/Context;)V

    .line 3298
    .restart local v3    # "view":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_4

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    if-ne v4, v10, :cond_3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-lez v4, :cond_4

    :cond_3
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    move-object v4, v3

    .line 3299
    check-cast v4, Lorg/telegram/ui/Cells/AboutLinkCell;

    new-instance v5, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setDelegate(Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;)V

    goto/16 :goto_0

    .line 3235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
