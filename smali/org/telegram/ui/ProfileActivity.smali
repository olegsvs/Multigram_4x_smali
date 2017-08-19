.class public Lorg/telegram/ui/ProfileActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProfileActivity$ListAdapter;,
        Lorg/telegram/ui/ProfileActivity$TopView;
    }
.end annotation


# static fields
.field private static final add_contact:I = 0x1

.field private static final add_shortcut:I = 0xe

.field private static final block_contact:I = 0x2

.field private static final call_item:I = 0xf

.field private static final convert_to_supergroup:I = 0xd

.field private static final delete_contact:I = 0x5

.field private static final edit_channel:I = 0xc

.field private static final edit_contact:I = 0x4

.field private static final edit_name:I = 0x8

.field private static final invite_to_group:I = 0x9

.field private static final leave_group:I = 0x7

.field private static final search_members:I = 0x10

.field private static final set_admins:I = 0xb

.field private static final share:I = 0xa

.field private static final share_contact:I = 0x3


# instance fields
.field private addMemberRow:I

.field private adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private allowProfileAnimation:Z

.field private animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private animationProgress:F

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private banFromGroup:I

.field private botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

.field private callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private channelInfoRow:I

.field private channelNameRow:I

.field private chat_id:I

.field private convertHelpRow:I

.field private convertRow:I

.field private creatingChat:Z

.field private creatorID:I

.field private currentChannelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private dialog_id:J

.field private editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private emptyRow:I

.field private emptyRowChat:I

.field private emptyRowChat2:I

.field private extraHeight:I

.field private foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private groupsInCommonRow:I

.field private hideFiles:Z

.field private hideLinks:Z

.field private hideMedia:Z

.field private hideMusic:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private initialAnimationExtraHeight:I

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private leaveChannelRow:I

.field private linkSearchRequestId:I

.field private listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadMoreMembersRow:I

.field private loadingUsers:Z

.field private membersEndRow:I

.field private membersRow:I

.field private membersSectionRow:I

.field private mergeDialogId:J

.field private final nameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private onlineCount:I

.field private onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private onlyId:I

.field private onlyIdMedia:I

.field private openAnimationInProgress:Z

.field private parentChatActivity:Lorg/telegram/ui/ChatActivity;

.field private participantsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private pass:I

.field private phoneRow:I

.field private playProfileAnimation:Z

.field private recreateMenuAfterAnimation:Z

.field private rowCount:I

.field private sectionRow:I

.field private selectedUser:I

.field private settingsKeyRow:I

.field private settingsNotificationsRow:I

.field private settingsTimerRow:I

.field private sharedFilesRow:I

.field private sharedLinksRow:I

.field private sharedMediaRow:I

.field private sharedMusicRow:I

.field private sortIndex:I

.field private sortedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startSecretChatRow:I

.field private topView:Lorg/telegram/ui/ProfileActivity$TopView;

.field private topViewColor:I

.field private totalFilesCount:I

.field private totalFilesCountMerge:I

.field private totalLinksCount:I

.field private totalLinksCountMerge:I

.field private totalMediaCount:I

.field private totalMediaCountMerge:I

.field private totalMusicCount:I

.field private totalMusicCountMerge:I

.field private userAbout:Ljava/lang/String;

.field private userBlocked:Z

.field private userInfoDetailedRow:I

.field private userInfoRow:I

.field private userSectionRow:I

.field private user_id:I

.field private usernameRow:I

.field private usersEndReached:Z

.field private writeButton:Landroid/widget/ImageView;

.field private writeButtonAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 270
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 125
    new-array v0, v3, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 126
    new-array v0, v3, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    .line 157
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    .line 165
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I

    .line 166
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I

    .line 167
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalFilesCount:I

    .line 168
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalFilesCountMerge:I

    .line 169
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalMusicCount:I

    .line 170
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalMusicCountMerge:I

    .line 171
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalLinksCount:I

    .line 172
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalLinksCountMerge:I

    .line 194
    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->sortIndex:I

    .line 226
    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2625
    new-instance v0, Lorg/telegram/ui/ProfileActivity$30;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$30;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameComparator:Ljava/util/Comparator;

    .line 271
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->topViewColor:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$BotInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->checkListViewScroll()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ProfileActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->sharedMusicRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->sharedLinksRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->sharedFilesRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/ProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->creatingChat:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->openAddMember()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->membersRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ProfileActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->processOnClickOrPress(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->selectedUser:I

    return v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/ProfileActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/ProfileActivity;->selectedUser:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->onlyId:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->onlyIdMedia:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ProfileActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->showUserMsgs(I)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ProfileActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->showUserMedia(I)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ProfileActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->kickUser(I)V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChannelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-object v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->currentChannelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-object p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->banFromGroup:I

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I

    return v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ProfileActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->getChannelParticipants(Z)V

    return-void
.end method

.method static synthetic access$5902(Lorg/telegram/ui/ProfileActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/ProfileActivity;->linkSearchRequestId:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object v0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p1
.end method

.method static synthetic access$6102(Lorg/telegram/ui/ProfileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->userAbout:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->pass:I

    return v0
.end method

.method static synthetic access$6202(Lorg/telegram/ui/ProfileActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/ProfileActivity;->pass:I

    return p1
.end method

.method static synthetic access$6302(Lorg/telegram/ui/ProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->usersEndReached:Z

    return p1
.end method

.method static synthetic access$6402(Lorg/telegram/ui/ProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z

    return p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ProfileActivity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/ProfileActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$7002(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->creatorID:I

    return v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    return v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    return v0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->userInfoDetailedRow:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    return v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I

    return v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalFilesCount:I

    return v0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalFilesCountMerge:I

    return v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalMusicCount:I

    return v0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalMusicCountMerge:I

    return v0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalLinksCount:I

    return v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalLinksCountMerge:I

    return v0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    return v0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->leaveChatPressed()V

    return-void
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    return v0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    return v0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I

    return v0
.end method

.method private checkListViewScroll()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1778
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    iget-boolean v5, p0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-eqz v5, :cond_1

    .line 1797
    :cond_0
    :goto_0
    return-void

    .line 1782
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1783
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1784
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1785
    .local v3, "top":I
    const/4 v2, 0x0

    .line 1786
    .local v2, "newOffset":I
    if-ltz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v5

    if-nez v5, :cond_2

    .line 1787
    move v2, v3

    .line 1789
    :cond_2
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    if-eq v5, v2, :cond_0

    .line 1790
    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    .line 1791
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    invoke-virtual {v5}, Lorg/telegram/ui/ProfileActivity$TopView;->invalidate()V

    .line 1792
    iget-boolean v5, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v5, :cond_4

    .line 1793
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    .line 1795
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    goto :goto_0
.end method

.method private createActionBarMenu()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x0

    const v10, 0x7f0200c3

    const/16 v9, 0xa

    .line 3066
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 3067
    .local v3, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->clearItems()V

    .line 3068
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 3070
    const/4 v2, 0x0

    .line 3071
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v6, :cond_e

    .line 3072
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eq v6, v7, :cond_d

    .line 3073
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v5

    .line 3074
    .local v5, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_userFull;->phone_calls_available:Z

    if-eqz v6, :cond_0

    .line 3075
    const/16 v6, 0xf

    const v7, 0x7f0200da

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 3077
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b

    .line 3078
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 3079
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v4, :cond_1

    .line 3172
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :goto_0
    return-void

    .line 3082
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_1
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 3083
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_3

    .line 3084
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-nez v6, :cond_2

    .line 3085
    const/16 v6, 0x9

    const-string/jumbo v7, "BotInvite"

    const v8, 0x7f0700dd

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3087
    :cond_2
    const-string/jumbo v6, "BotShare"

    const v7, 0x7f0700e1

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3090
    :cond_3
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    .line 3091
    const/4 v6, 0x1

    const-string/jumbo v7, "AddContact"

    const v8, 0x7f07004b

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3092
    const-string/jumbo v6, "ShareContact"

    const v7, 0x7f070672

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3093
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v6, :cond_6

    const-string/jumbo v6, "BlockContact"

    const v7, 0x7f0700d2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v2, v11, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3168
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 3169
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 3171
    :cond_5
    const/16 v6, 0xe

    const-string/jumbo v7, "AddShortcut"

    const v8, 0x7f070054

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto :goto_0

    .line 3093
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_6
    const-string/jumbo v6, "Unblock"

    const v7, 0x7f0706ff

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 3095
    :cond_7
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_9

    .line 3096
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v6, :cond_8

    const-string/jumbo v6, "BotStop"

    const v7, 0x7f0700e5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v2, v11, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto :goto_2

    :cond_8
    const-string/jumbo v6, "BotRestart"

    const v7, 0x7f0700df

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 3098
    :cond_9
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v6, :cond_a

    const-string/jumbo v6, "BlockContact"

    const v7, 0x7f0700d2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v2, v11, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto :goto_2

    :cond_a
    const-string/jumbo v6, "Unblock"

    const v7, 0x7f0706ff

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 3102
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_b
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 3103
    const-string/jumbo v6, "ShareContact"

    const v7, 0x7f070672

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3104
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v6, :cond_c

    const-string/jumbo v6, "BlockContact"

    const v7, 0x7f0700d2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v2, v11, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3105
    const/4 v6, 0x4

    const-string/jumbo v7, "EditContact"

    const v8, 0x7f07024a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3106
    const/4 v6, 0x5

    const-string/jumbo v7, "DeleteContact"

    const v8, 0x7f07020a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_2

    .line 3104
    :cond_c
    const-string/jumbo v6, "Unblock"

    const v7, 0x7f0706ff

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 3109
    .end local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_d
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 3110
    const-string/jumbo v6, "ShareContact"

    const v7, 0x7f070672

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_2

    .line 3112
    :cond_e
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v6, :cond_4

    .line 3113
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v6, :cond_1f

    .line 3114
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 3115
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_11

    .line 3116
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    .line 3117
    .local v1, "isChannel":Z
    if-eqz v1, :cond_f

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    if-nez v1, :cond_15

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v6, :cond_15

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_15

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v6, :cond_15

    .line 3118
    :cond_10
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v7, 0x7f0200a2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3119
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v8, v7, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3124
    :goto_6
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3126
    .end local v1    # "isChannel":Z
    :cond_11
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 3127
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 3128
    const/16 v6, 0xc

    const v7, 0x7f020169

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 3129
    if-nez v2, :cond_12

    .line 3130
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 3132
    :cond_12
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_16

    .line 3133
    const/16 v6, 0xc

    const-string/jumbo v7, "ManageGroupMenu"

    const v8, 0x7f0703fe

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3138
    :cond_13
    :goto_7
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_4

    .line 3139
    if-nez v2, :cond_14

    .line 3140
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 3142
    :cond_14
    const/16 v6, 0x10

    const-string/jumbo v7, "SearchMembers"

    const v8, 0x7f070622

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3143
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_4

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v6, :cond_4

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v6, :cond_4

    .line 3144
    const/4 v6, 0x7

    const-string/jumbo v7, "LeaveMegaMenu"

    const v8, 0x7f0703d5

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_2

    .line 3121
    .restart local v1    # "isChannel":Z
    :cond_15
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v7, 0x7f0200a1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3122
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_6

    .line 3135
    .end local v1    # "isChannel":Z
    :cond_16
    const/16 v6, 0xc

    const-string/jumbo v7, "ManageChannelMenu"

    const v8, 0x7f0703fc

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto :goto_7

    .line 3148
    :cond_17
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v6, :cond_18

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_18

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-eqz v6, :cond_19

    .line 3149
    :cond_18
    const/16 v6, 0x8

    const v7, 0x7f0200b5

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 3151
    :cond_19
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 3152
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v6, :cond_1a

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v6, :cond_1a

    .line 3153
    const/16 v6, 0xb

    const-string/jumbo v7, "SetAdmins"

    const v8, 0x7f070662

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3155
    :cond_1a
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v6, :cond_1b

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_1b

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-eqz v6, :cond_1c

    .line 3156
    :cond_1b
    const/16 v6, 0x8

    const-string/jumbo v7, "ChannelEdit"

    const v8, 0x7f070133

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3158
    :cond_1c
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1e

    .line 3159
    :cond_1d
    const/16 v6, 0xd

    const-string/jumbo v7, "ConvertGroupMenu"

    const v8, 0x7f0701c8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 3161
    :cond_1e
    const/4 v6, 0x7

    const-string/jumbo v7, "DeleteAndExit"

    const v8, 0x7f070205

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_2

    .line 3164
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1f
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 3165
    const/16 v6, 0x8

    const-string/jumbo v7, "EditName"

    const v8, 0x7f07024d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_2
.end method

.method private fetchUsersFromChannelInfo()V
    .locals 4

    .prologue
    .line 2645
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1

    .line 2657
    :cond_0
    return-void

    .line 2648
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v2, :cond_0

    .line 2649
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2650
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2651
    .local v1, "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 2652
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v2, :cond_2

    .line 2653
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->creatorID:I

    .line 2649
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 1915
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1929
    :goto_0
    return-void

    .line 1918
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ProfileActivity$25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$25;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private getChannelParticipants(Z)V
    .locals 5
    .param p1, "reload"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1693
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_1

    .line 1745
    :cond_0
    :goto_0
    return-void

    .line 1696
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z

    .line 1697
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0x12c

    .line 1699
    .local v0, "delay":I
    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 1700
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1701
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 1702
    if-eqz p1, :cond_3

    :goto_2
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 1703
    const/16 v3, 0xc8

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 1704
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ProfileActivity$22;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/ProfileActivity$22;-><init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;I)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 1744
    .local v2, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .end local v0    # "delay":I
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    .end local v2    # "reqId":I
    :cond_2
    move v0, v3

    .line 1697
    goto :goto_1

    .line 1702
    .restart local v0    # "delay":I
    .restart local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    goto :goto_2
.end method

.method private kickUser(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v6, 0x0

    .line 2660
    if-eqz p1, :cond_0

    .line 2661
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 2673
    :goto_0
    return-void

    .line 2663
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 2664
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2665
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    int-to-long v4, v3

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2669
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 2670
    iput-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    .line 2671
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->finishFragment()V

    goto :goto_0

    .line 2667
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private leaveChatPressed()V
    .locals 3

    .prologue
    const v2, 0x7f070093

    .line 1649
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1650
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_1

    .line 1651
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ChannelLeaveAlert"

    const v2, 0x7f07013a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1655
    :goto_1
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07007d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1656
    const-string/jumbo v1, "OK"

    const v2, 0x7f0704f5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileActivity$21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileActivity$21;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1662
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f070105

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1663
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1664
    return-void

    .line 1651
    :cond_0
    const-string/jumbo v1, "AreYouSureDeleteAndExit"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1653
    :cond_1
    const-string/jumbo v1, "AreYouSureDeleteAndExit"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1
.end method

.method private needLayout()V
    .locals 23

    .prologue
    .line 1801
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v15

    if-eqz v15, :cond_4

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v16

    add-int v7, v15, v16

    .line 1802
    .local v7, "newTop":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-nez v15, :cond_0

    .line 1803
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1804
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v15, v7, :cond_0

    .line 1805
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1806
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1810
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v15, :cond_11

    .line 1811
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    int-to-float v15, v15

    const/high16 v16, 0x42b00000    # 88.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v5, v15, v16

    .line 1812
    .local v5, "diff":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1814
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v15, :cond_2

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v15

    if-eqz v15, :cond_5

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    move/from16 v17, v0

    add-int v15, v15, v17

    const/high16 v17, 0x41ec0000    # 29.5f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v15, v15, v17

    int-to-float v15, v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1817
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-nez v15, :cond_2

    .line 1818
    const v15, 0x3e4ccccd    # 0.2f

    cmpl-float v15, v5, v15

    if-lez v15, :cond_6

    const/4 v9, 0x1

    .line 1819
    .local v9, "setVisible":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_7

    const/4 v4, 0x1

    .line 1820
    .local v4, "currentVisible":Z
    :goto_3
    if-eq v9, v4, :cond_2

    .line 1821
    if-eqz v9, :cond_8

    .line 1822
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1826
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v15, :cond_1

    .line 1827
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1828
    .local v8, "old":Landroid/animation/AnimatorSet;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1829
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1831
    .end local v8    # "old":Landroid/animation/AnimatorSet;
    :cond_1
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1832
    if-eqz v9, :cond_9

    .line 1833
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string/jumbo v19, "scaleX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    .line 1835
    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string/jumbo v19, "scaleY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    .line 1836
    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string/jumbo v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    .line 1837
    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    .line 1834
    invoke-virtual/range {v15 .. v16}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1847
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v16, 0x96

    invoke-virtual/range {v15 .. v17}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1848
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v16, Lorg/telegram/ui/ProfileActivity$24;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$24;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1856
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    .line 1861
    .end local v4    # "currentVisible":Z
    .end local v9    # "setVisible":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v15

    if-eqz v15, :cond_a

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_6
    int-to-float v15, v15

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v17, v17, v5

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/high16 v16, 0x41a80000    # 21.0f

    sget v17, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    const/high16 v16, 0x41d80000    # 27.0f

    sget v17, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v16, v16, v17

    mul-float v16, v16, v5

    add-float v3, v15, v16

    .line 1862
    .local v3, "avatarY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v16, 0x42280000    # 42.0f

    const/high16 v17, 0x41900000    # 18.0f

    mul-float v17, v17, v5

    add-float v16, v16, v17

    const/high16 v17, 0x42280000    # 42.0f

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v16, 0x42280000    # 42.0f

    const/high16 v17, 0x41900000    # 18.0f

    mul-float v17, v17, v5

    add-float v16, v16, v17

    const/high16 v17, 0x42280000    # 42.0f

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    .line 1864
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v16, 0x423c0000    # 47.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationX(F)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationY(F)V

    .line 1866
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_7
    const/4 v15, 0x2

    if-ge v2, v15, :cond_10

    .line 1867
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    if-nez v15, :cond_b

    .line 1866
    :cond_3
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1801
    .end local v2    # "a":I
    .end local v3    # "avatarY":F
    .end local v5    # "diff":F
    .end local v7    # "newTop":I
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1815
    .restart local v5    # "diff":F
    .restart local v7    # "newTop":I
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1818
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1819
    .restart local v9    # "setVisible":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1824
    .restart local v4    # "currentVisible":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1840
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v16, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string/jumbo v19, "scaleX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x3e4ccccd    # 0.2f

    aput v22, v20, v21

    .line 1842
    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string/jumbo v19, "scaleY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x3e4ccccd    # 0.2f

    aput v22, v20, v21

    .line 1843
    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string/jumbo v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 1844
    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    .line 1841
    invoke-virtual/range {v15 .. v16}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_5

    .line 1861
    .end local v4    # "currentVisible":Z
    .end local v9    # "setVisible":Z
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 1871
    .restart local v2    # "a":I
    .restart local v3    # "avatarY":F
    :cond_b
    sget-object v15, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v16, "theme"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1872
    .local v10, "themePrefs":Landroid/content/SharedPreferences;
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameSize:I

    add-int/lit8 v13, v15, -0x12

    .line 1873
    .local v13, "y":I
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusSize:I

    add-int/lit8 v15, v15, -0xe

    add-int v14, v15, v13

    .line 1874
    .local v14, "y2":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const/high16 v16, -0x3e580000    # -21.0f

    sget v17, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v16, v16, v17

    mul-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationX(F)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const v17, 0x3fa66666    # 1.3f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    const/high16 v17, 0x40e00000    # 7.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v5

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationY(F)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const/high16 v16, -0x3e580000    # -21.0f

    sget v17, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v16, v16, v17

    mul-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationX(F)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x41c00000    # 24.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    const/high16 v17, 0x41300000    # 11.0f

    sget v18, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v5

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationY(F)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v16, -0x3e580000    # -21.0f

    sget v17, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v16, v16, v17

    mul-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationX(F)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    add-int/lit8 v17, v14, 0x20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    const/high16 v17, 0x41b00000    # 22.0f

    sget v18, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v5

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationY(F)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x3df5c28f    # 0.12f

    mul-float v17, v17, v5

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScaleX(F)V

    .line 1882
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x3df5c28f    # 0.12f

    mul-float v17, v17, v5

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScaleY(F)V

    .line 1883
    const/4 v15, 0x1

    if-ne v2, v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-nez v15, :cond_3

    .line 1885
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1886
    const/high16 v15, 0x43f50000    # 490.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    .line 1890
    .local v11, "width":I
    :goto_9
    const/high16 v16, 0x42fc0000    # 126.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v15, :cond_e

    :cond_c
    const/16 v15, 0x30

    :goto_a
    add-int/lit8 v15, v15, 0x28

    int-to-float v15, v15

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v5

    mul-float v15, v15, v17

    add-float v15, v15, v16

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int v15, v11, v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v16, v0

    aget-object v16, v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTranslationX()F

    move-result v16

    sub-float v15, v15, v16

    float-to-int v11, v15

    .line 1891
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v16, v0

    aget-object v16, v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v16, v0

    aget-object v16, v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getScaleX()F

    move-result v16

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v16, v0

    aget-object v16, v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getSideDrawablesSize()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v12, v15, v16

    .line 1892
    .local v12, "width2":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1893
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v15, v11

    cmpg-float v15, v15, v12

    if-gez v15, :cond_f

    .line 1894
    int-to-float v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v16, v0

    aget-object v16, v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getScaleX()F

    move-result v16

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1898
    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1901
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTranslationX()F

    move-result v15

    const/high16 v16, 0x41000000    # 8.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x42200000    # 40.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v5

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1902
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 1888
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "width":I
    .end local v12    # "width2":F
    :cond_d
    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v15, Landroid/graphics/Point;->x:I

    .restart local v11    # "width":I
    goto/16 :goto_9

    .line 1890
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 1896
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v12    # "width2":F
    :cond_f
    const/4 v15, -0x2

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_b

    .line 1905
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "themePrefs":Landroid/content/SharedPreferences;
    .end local v11    # "width":I
    .end local v12    # "width2":F
    .end local v13    # "y":I
    .end local v14    # "y2":I
    :cond_10
    float-to-double v0, v5

    move-wide/from16 v16, v0

    const-wide v18, 0x3feb333333333333L    # 0.85

    cmpl-double v15, v16, v18

    if-lez v15, :cond_13

    .line 1906
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 1911
    .end local v2    # "a":I
    .end local v3    # "avatarY":F
    .end local v5    # "diff":F
    :cond_11
    :goto_c
    sget-boolean v15, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v15, :cond_12

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateActionBarBG()V

    .line 1912
    :cond_12
    return-void

    .line 1908
    .restart local v2    # "a":I
    .restart local v3    # "avatarY":F
    .restart local v5    # "diff":F
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    goto :goto_c
.end method

.method private openAddMember()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1748
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1749
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "onlyUsers"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1750
    const-string/jumbo v5, "destroyAfterSelect"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1751
    const-string/jumbo v5, "returnAsResult"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1752
    const-string/jumbo v5, "needForwardCount"

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1754
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v4, :cond_1

    .line 1755
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canAddViaLink(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1756
    const-string/jumbo v4, "chat_id"

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1758
    :cond_0
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v5, "AddToTheGroup"

    const v6, 0x7f07005c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    :cond_1
    new-instance v2, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1761
    .local v2, "fragment":Lorg/telegram/ui/ContactsActivity;
    new-instance v4, Lorg/telegram/ui/ProfileActivity$23;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ProfileActivity$23;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 1767
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v4, :cond_4

    .line 1768
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1769
    .local v3, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1770
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1752
    .end local v0    # "a":I
    .end local v2    # "fragment":Lorg/telegram/ui/ContactsActivity;
    .end local v3    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1772
    .restart local v0    # "a":I
    .restart local v2    # "fragment":Lorg/telegram/ui/ContactsActivity;
    .restart local v3    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ContactsActivity;->setIgnoreUsers(Ljava/util/HashMap;)V

    .line 1774
    .end local v0    # "a":I
    .end local v3    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_4
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1775
    return-void
.end method

.method private processOnClickOrPress(I)Z
    .locals 12
    .param p1, "position"    # I

    .prologue
    const v11, 0x7f0701ca

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1476
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    if-eq p1, v9, :cond_0

    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    if-ne p1, v9, :cond_4

    .line 1478
    :cond_0
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    if-ne p1, v9, :cond_3

    .line 1479
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1480
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_1

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 1580
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    :goto_0
    return v7

    .line 1483
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 1491
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .local v6, "username":Ljava/lang/String;
    :goto_1
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1492
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-array v9, v8, [Ljava/lang/CharSequence;

    const-string/jumbo v10, "Copy"

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    new-instance v7, Lorg/telegram/ui/ProfileActivity$17;

    invoke-direct {v7, p0, v6}, Lorg/telegram/ui/ProfileActivity$17;-><init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1506
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v7, v8

    .line 1507
    goto :goto_0

    .line 1485
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v6    # "username":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1486
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v2, :cond_1

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1489
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .restart local v6    # "username":Ljava/lang/String;
    goto :goto_1

    .line 1508
    .end local v2    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v6    # "username":Ljava/lang/String;
    :cond_4
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    if-ne p1, v9, :cond_6

    .line 1509
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1510
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_1

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1514
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1515
    .restart local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1516
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v5

    .line 1518
    .local v5, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eqz v9, :cond_5

    if-eqz v5, :cond_5

    iget-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$TL_userFull;->phone_calls_available:Z

    if-eqz v9, :cond_5

    .line 1519
    const-string/jumbo v9, "CallViaTelegram"

    const v10, 0x7f070100

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    :cond_5
    const-string/jumbo v9, "Call"

    const v10, 0x7f0700ee

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    const-string/jumbo v7, "Copy"

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    new-instance v9, Lorg/telegram/ui/ProfileActivity$18;

    invoke-direct {v9, p0, v0, v4}, Lorg/telegram/ui/ProfileActivity$18;-><init>(Lorg/telegram/ui/ProfileActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v7, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1551
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v7, v8

    .line 1552
    goto/16 :goto_0

    .line 1553
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_6
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    if-eq p1, v9, :cond_7

    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    if-eq p1, v9, :cond_7

    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->userInfoDetailedRow:I

    if-ne p1, v9, :cond_1

    .line 1554
    :cond_7
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1555
    .restart local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-array v9, v8, [Ljava/lang/CharSequence;

    const-string/jumbo v10, "Copy"

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    new-instance v7, Lorg/telegram/ui/ProfileActivity$19;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/ProfileActivity$19;-><init>(Lorg/telegram/ui/ProfileActivity;I)V

    invoke-virtual {v1, v9, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1577
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v7, v8

    .line 1578
    goto/16 :goto_0
.end method

.method private showUserMedia(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1596
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1597
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "chat_id"

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1599
    const-string/jumbo v1, "only_id_media"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1600
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1601
    return-void
.end method

.method private showUserMsgs(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1588
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1589
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "chat_id"

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1590
    const-string/jumbo v1, "only_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1592
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1593
    return-void
.end method

.method private updateActionBarBG()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3036
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 3037
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 3038
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarColor:I

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->topViewColor:I

    .line 3039
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    .line 3040
    .local v3, "val":I
    if-lez v3, :cond_0

    .line 3041
    iput v6, p0, Lorg/telegram/ui/ProfileActivity;->topViewColor:I

    .line 3044
    packed-switch v3, :pswitch_data_0

    .line 3055
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 3056
    .local v2, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientColor:I

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->topViewColor:I

    .line 3058
    :goto_0
    const/4 v4, 0x2

    new-array v1, v4, [I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarColor:I

    aput v4, v1, v6

    const/4 v4, 0x1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientColor:I

    aput v5, v1, v4

    .line 3059
    .local v1, "colors":[I
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 3060
    .local v0, "actionBarGradient":Landroid/graphics/drawable/GradientDrawable;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3062
    .end local v0    # "actionBarGradient":Landroid/graphics/drawable/GradientDrawable;
    .end local v1    # "colors":[I
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->topViewColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$TopView;->setBackgroundColor(I)V

    .line 3063
    return-void

    .line 3046
    :pswitch_0
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 3047
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 3049
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 3050
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 3052
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 3053
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 3044
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateListBG()V
    .locals 6

    .prologue
    .line 3010
    const/4 v0, 0x1

    .line 3011
    .local v0, "b":Z
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-lez v4, :cond_0

    if-eqz v0, :cond_0

    .line 3013
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    packed-switch v4, :pswitch_data_0

    .line 3024
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 3026
    .local v3, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_0
    const/4 v4, 0x2

    new-array v1, v4, [I

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    aput v5, v1, v4

    const/4 v4, 0x1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientColor:I

    aput v5, v1, v4

    .line 3027
    .local v1, "colors":[I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 3028
    .local v2, "gd":Landroid/graphics/drawable/GradientDrawable;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3033
    .end local v1    # "colors":[I
    .end local v2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_1
    return-void

    .line 3015
    :pswitch_0
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 3016
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 3018
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 3019
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 3021
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 3022
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 3030
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    goto :goto_1

    .line 3013
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateOnlineCount()V
    .locals 8

    .prologue
    .line 2545
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    .line 2546
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    .line 2547
    .local v1, "currentTime":I
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2548
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_5

    .line 2549
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 2550
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2551
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 2552
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gt v5, v1, :cond_1

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_1
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/16 v6, 0x2710

    if-le v5, v6, :cond_2

    .line 2553
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    .line 2555
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2556
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v5, :cond_3

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->creatorID:I

    .line 2549
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2560
    .end local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    :try_start_0
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->sortIndex:I

    if-nez v5, :cond_6

    .line 2561
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/ProfileActivity$29;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileActivity$29;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2619
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    if-eqz v5, :cond_5

    .line 2620
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyItemRangeChanged(II)V

    .line 2623
    .end local v0    # "a":I
    :cond_5
    return-void

    .line 2613
    .restart local v0    # "a":I
    :cond_6
    :try_start_1
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->nameComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2615
    :catch_0
    move-exception v2

    .line 2616
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private updateProfileData()V
    .locals 26

    .prologue
    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 3007
    :cond_0
    :goto_0
    return-void

    .line 2827
    :cond_1
    const/4 v8, 0x0

    .line 2828
    .local v8, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 2829
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 2830
    .local v19, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v13, 0x0

    .line 2831
    .local v13, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v14, 0x0

    .line 2832
    .local v14, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 2833
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2834
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2836
    :cond_2
    sget-boolean v20, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v20, :cond_3

    .line 2837
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarAvatarRadius:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 2838
    .local v15, "radius":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setRadius(I)V

    .line 2841
    .end local v15    # "radius":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2842
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v20, v0

    const-string/jumbo v21, "50_50"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v13, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2844
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    .line 2846
    .local v10, "newString":Ljava/lang/String;
    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v20, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 2847
    const-string/jumbo v20, "ChatYourSelf"

    const v21, 0x7f070182

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2848
    .local v11, "newString2":Ljava/lang/String;
    const-string/jumbo v20, "ChatYourSelfName"

    const v21, 0x7f070187

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 2856
    :goto_1
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ge v4, v0, :cond_12

    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    if-nez v20, :cond_8

    .line 2856
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2849
    .end local v4    # "a":I
    .end local v11    # "newString2":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v20, v0

    const v21, 0x514c8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v20, v0

    const v21, 0xbdb28

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 2850
    :cond_5
    const-string/jumbo v20, "ServiceNotifications"

    const v21, 0x7f07065c

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "newString2":Ljava/lang/String;
    goto :goto_1

    .line 2851
    .end local v11    # "newString2":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 2852
    const-string/jumbo v20, "Bot"

    const v21, 0x7f0700d9

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "newString2":Ljava/lang/String;
    goto :goto_1

    .line 2854
    .end local v11    # "newString2":Ljava/lang/String;
    :cond_7
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "newString2":Ljava/lang/String;
    goto :goto_1

    .line 2860
    .restart local v4    # "a":I
    :cond_8
    if-nez v4, :cond_d

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v20, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    const/16 v21, 0x309

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    const/16 v21, 0x14d

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_d

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_d

    .line 2861
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    if-nez v20, :cond_9

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v20

    if-nez v20, :cond_d

    .line 2862
    :cond_9
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "+"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2863
    .local v12, "phoneString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 2864
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2871
    .end local v12    # "phoneString":Ljava/lang/String;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2874
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_lockIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2875
    .local v9, "leftIcon":Landroid/graphics/drawable/Drawable;
    :goto_5
    const/16 v17, 0x0

    .line 2876
    .local v17, "rightIcon":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_11

    .line 2877
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    move-wide/from16 v20, v0

    const-wide/16 v24, 0x0

    cmp-long v20, v20, v24

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    move-wide/from16 v20, v0

    :goto_6
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v20

    if-eqz v20, :cond_10

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->chat_muteIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2881
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2882
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2867
    .end local v9    # "leftIcon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "rightIcon":Landroid/graphics/drawable/Drawable;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 2868
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2874
    :cond_e
    const/4 v9, 0x0

    goto :goto_5

    .line 2877
    .restart local v9    # "leftIcon":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "rightIcon":Landroid/graphics/drawable/Drawable;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    goto :goto_6

    :cond_10
    const/16 v17, 0x0

    goto :goto_7

    .line 2878
    :cond_11
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 2879
    new-instance v17, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v17    # "rightIcon":Landroid/graphics/drawable/Drawable;
    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .restart local v17    # "rightIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_7

    .line 2884
    .end local v9    # "leftIcon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "rightIcon":Landroid/graphics/drawable/Drawable;
    :cond_12
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    .line 2885
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "id: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2886
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v21

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v20

    if-nez v20, :cond_14

    const/16 v20, 0x1

    :goto_8
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2987
    .end local v4    # "a":I
    .end local v10    # "newString":Ljava/lang/String;
    .end local v11    # "newString2":Ljava/lang/String;
    .end local v13    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v14    # "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_13
    :goto_9
    move v7, v8

    .line 2988
    .local v7, "fId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    new-instance v21, Lorg/telegram/ui/ProfileActivity$31;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/ProfileActivity$31;-><init>(Lorg/telegram/ui/ProfileActivity;I)V

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 2886
    .end local v7    # "fId":I
    .restart local v4    # "a":I
    .restart local v10    # "newString":Ljava/lang/String;
    .restart local v11    # "newString2":Ljava/lang/String;
    .restart local v13    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .restart local v14    # "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .restart local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_14
    const/16 v20, 0x0

    goto :goto_8

    .line 2887
    .end local v4    # "a":I
    .end local v10    # "newString":Ljava/lang/String;
    .end local v11    # "newString2":Ljava/lang/String;
    .end local v13    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v14    # "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 2888
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 2889
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v5, :cond_19

    .line 2890
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2896
    :goto_a
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 2897
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v20, v0

    if-nez v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1c

    .line 2898
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    .line 2899
    const-string/jumbo v20, "Loading"

    const v21, 0x7f0703eb

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 2921
    .restart local v10    # "newString":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "id: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2935
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->creatorID:I

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 2936
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    .line 2937
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ChannelCreator"

    const v23, 0x7f07012e

    invoke-static/range {v22 .. v23}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->creatorID:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2939
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_d
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ge v4, v0, :cond_2a

    .line 2940
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    if-nez v20, :cond_22

    .line 2939
    :cond_18
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2892
    .end local v4    # "a":I
    .end local v10    # "newString":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto/16 :goto_a

    .line 2901
    :cond_1a
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x40

    if-eqz v20, :cond_1b

    .line 2902
    const-string/jumbo v20, "ChannelPublic"

    const v21, 0x7f070160

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "newString":Ljava/lang/String;
    goto/16 :goto_b

    .line 2904
    .end local v10    # "newString":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v20, "ChannelPrivate"

    const v21, 0x7f07015d

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "newString":Ljava/lang/String;
    goto/16 :goto_b

    .line 2908
    .end local v10    # "newString":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1e

    .line 2909
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    .line 2910
    const-string/jumbo v20, "%s, %s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "Members"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "OnlineCount"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "newString":Ljava/lang/String;
    goto/16 :goto_b

    .line 2912
    .end local v10    # "newString":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v20, "Members"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "newString":Ljava/lang/String;
    goto/16 :goto_b

    .line 2915
    .end local v10    # "newString":Ljava/lang/String;
    :cond_1e
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 2916
    .local v16, "result":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v18

    .line 2917
    .local v18, "shortNumber":Ljava/lang/String;
    const-string/jumbo v20, "Members"

    const/16 v21, 0x0

    aget v21, v16, v21

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v16, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "newString":Ljava/lang/String;
    goto/16 :goto_b

    .line 2925
    .end local v10    # "newString":Ljava/lang/String;
    .end local v16    # "result":[I
    .end local v18    # "shortNumber":Ljava/lang/String;
    :cond_1f
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 2926
    .local v6, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    if-eqz v20, :cond_20

    .line 2927
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2929
    :cond_20
    if-eqz v6, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_21

    .line 2930
    const-string/jumbo v20, "%s, %s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "Members"

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "OnlineCount"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "newString":Ljava/lang/String;
    goto/16 :goto_c

    .line 2932
    .end local v10    # "newString":Ljava/lang/String;
    :cond_21
    const-string/jumbo v20, "Members"

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "newString":Ljava/lang/String;
    goto/16 :goto_c

    .line 2943
    .end local v6    # "count":I
    .restart local v4    # "a":I
    :cond_22
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_23

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2946
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2947
    if-eqz v4, :cond_25

    .line 2948
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    move/from16 v20, v0

    if-eqz v20, :cond_24

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    new-instance v21, Lorg/telegram/ui/Components/CombinedDrawable;

    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v21 .. v23}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2956
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v20, v0

    if-eqz v20, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    if-eqz v20, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    move/from16 v20, v0

    if-lez v20, :cond_27

    .line 2957
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    .line 2958
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 2951
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 2954
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v21, v20, v4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v20

    if-eqz v20, :cond_26

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->chat_muteIconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_10
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    :cond_26
    const/16 v20, 0x0

    goto :goto_10

    .line 2960
    :cond_27
    if-nez v4, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v20

    if-eqz v20, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    if-eqz v20, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v20, v0

    if-eqz v20, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v20, v0

    if-nez v20, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    move/from16 v20, v0

    if-eqz v20, :cond_29

    .line 2961
    :cond_28
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 2962
    .restart local v16    # "result":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v18

    .line 2963
    .restart local v18    # "shortNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    const-string/jumbo v21, "Members"

    const/16 v22, 0x0

    aget v22, v16, v22

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "%d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aget v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 2965
    .end local v16    # "result":[I
    .end local v18    # "shortNumber":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    .line 2966
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    aget-object v20, v20, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 2971
    :cond_2a
    const/4 v13, 0x0

    .line 2972
    .restart local v13    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v14, 0x0

    .line 2973
    .restart local v14    # "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2b

    .line 2974
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2975
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2977
    :cond_2b
    sget-boolean v20, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v20, :cond_2c

    .line 2978
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarAvatarRadius:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 2979
    .restart local v15    # "radius":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2980
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setRadius(I)V

    .line 2982
    .end local v15    # "radius":I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v20, v0

    const-string/jumbo v21, "50_50"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v13, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2984
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v21

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v20

    if-nez v20, :cond_2d

    const/16 v20, 0x1

    :goto_11
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto/16 :goto_9

    :cond_2d
    const/16 v20, 0x0

    goto :goto_11
.end method

.method private updateRowsIds()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 2680
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    .line 2681
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    .line 2682
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    .line 2683
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->userInfoDetailedRow:I

    .line 2684
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    .line 2685
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    .line 2686
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    .line 2687
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    .line 2688
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    .line 2689
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I

    .line 2690
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I

    .line 2691
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I

    .line 2692
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    .line 2693
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2694
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2695
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    .line 2696
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    .line 2697
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    .line 2698
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I

    .line 2699
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    .line 2700
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    .line 2701
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->membersRow:I

    .line 2702
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I

    .line 2703
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I

    .line 2704
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I

    .line 2706
    iput v0, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2707
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v3, :cond_11

    .line 2708
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2709
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    .line 2710
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2711
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    .line 2714
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v2

    .line 2715
    .local v2, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 2716
    .local v0, "hasUsername":Z
    :cond_2
    if-eqz v2, :cond_4

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2717
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    if-eq v3, v4, :cond_3

    .line 2718
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    .line 2720
    :cond_3
    if-eqz v0, :cond_c

    .line 2721
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    .line 2726
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 2727
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    .line 2729
    :cond_5
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->userInfoDetailedRow:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    if-eq v3, v4, :cond_7

    .line 2730
    :cond_6
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    .line 2732
    :cond_7
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-eq v3, v5, :cond_8

    .line 2733
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    .line 2735
    :cond_8
    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity;->hideMedia:Z

    if-eqz v3, :cond_d

    move v3, v4

    :goto_1
    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    .line 2736
    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity;->hideFiles:Z

    if-eqz v3, :cond_e

    move v3, v4

    :goto_2
    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sharedFilesRow:I

    .line 2737
    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity;->hideMusic:Z

    if-eqz v3, :cond_f

    move v3, v4

    :goto_3
    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sharedMusicRow:I

    .line 2738
    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity;->hideLinks:Z

    if-eqz v3, :cond_10

    :goto_4
    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->sharedLinksRow:I

    .line 2739
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v3, :cond_9

    .line 2740
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I

    .line 2741
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I

    .line 2743
    :cond_9
    if-eqz v2, :cond_a

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_userFull;->common_chats_count:I

    if-eqz v3, :cond_a

    .line 2744
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I

    .line 2746
    :cond_a
    if-eqz v1, :cond_b

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v3, :cond_b

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 2747
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I

    .line 2821
    .end local v0    # "hasUsername":Z
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_b
    :goto_5
    return-void

    .line 2723
    .restart local v0    # "hasUsername":Z
    .restart local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v2    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_c
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->userInfoDetailedRow:I

    goto/16 :goto_0

    .line 2735
    :cond_d
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    goto :goto_1

    .line 2736
    :cond_e
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    goto :goto_2

    .line 2737
    :cond_f
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    goto :goto_3

    .line 2738
    :cond_10
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    goto :goto_4

    .line 2749
    .end local v0    # "hasUsername":Z
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_11
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v3, :cond_b

    .line 2750
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v3, :cond_27

    .line 2751
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    .line 2752
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_13

    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16

    .line 2753
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_14

    .line 2754
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    .line 2756
    :cond_14
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_15

    .line 2757
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    .line 2759
    :cond_15
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    .line 2761
    :cond_16
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    .line 2762
    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity;->hideMedia:Z

    if-eqz v3, :cond_1e

    move v3, v4

    :goto_6
    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    .line 2763
    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity;->hideFiles:Z

    if-eqz v3, :cond_1f

    move v3, v4

    :goto_7
    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sharedFilesRow:I

    .line 2764
    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity;->hideMusic:Z

    if-eqz v3, :cond_20

    move v3, v4

    :goto_8
    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sharedMusicRow:I

    .line 2765
    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity;->hideLinks:Z

    if-eqz v3, :cond_21

    move v3, v4

    :goto_9
    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sharedLinksRow:I

    .line 2766
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2767
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_18

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    if-eqz v3, :cond_18

    .line 2768
    :cond_17
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersRow:I

    .line 2770
    :cond_18
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_19

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v3, :cond_19

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v3, :cond_19

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_19

    .line 2771
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I

    .line 2773
    :cond_19
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    if-nez v3, :cond_1b

    :cond_1a
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_1b

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-eqz v3, :cond_1d

    .line 2774
    :cond_1b
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    if-ge v3, v4, :cond_1d

    .line 2775
    :cond_1c
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2778
    :cond_1d
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2779
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    .line 2780
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    .line 2781
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2782
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2783
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    .line 2784
    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity;->usersEndReached:Z

    if-nez v3, :cond_b

    .line 2785
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I

    goto/16 :goto_5

    .line 2762
    :cond_1e
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    goto/16 :goto_6

    .line 2763
    :cond_1f
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    goto/16 :goto_7

    .line 2764
    :cond_20
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    goto/16 :goto_8

    .line 2765
    :cond_21
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    goto/16 :goto_9

    .line 2789
    :cond_22
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_25

    .line 2790
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    if-nez v3, :cond_24

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    .line 2791
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    if-ge v3, v5, :cond_24

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v3, :cond_23

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_23

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v3, :cond_24

    .line 2793
    :cond_23
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2796
    :cond_24
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v3, :cond_25

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->minGroupConvertSize:I

    if-lt v3, v5, :cond_25

    .line 2797
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    .line 2800
    :cond_25
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    .line 2801
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    if-eq v3, v4, :cond_26

    .line 2802
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I

    .line 2806
    :goto_a
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    if-nez v3, :cond_b

    .line 2807
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2808
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2809
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    goto/16 :goto_5

    .line 2804
    :cond_26
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    goto :goto_a

    .line 2813
    :cond_27
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    if-nez v3, :cond_b

    .line 2814
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2815
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2816
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2817
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    goto/16 :goto_5
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    .prologue
    .line 2457
    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    .line 2532
    const/4 v0, 0x1

    return v0
.end method

.method protected createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 444
    new-instance v0, Lorg/telegram/ui/ProfileActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$3;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    .line 450
    .local v0, "actionBar":Lorg/telegram/ui/ActionBar/ActionBar;
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x5

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getButtonColorForId(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 451
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarIconsColor:I

    :goto_1
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 452
    const-string/jumbo v1, "actionBarActionModeDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 453
    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 455
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 456
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 457
    return-object v0

    .line 450
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_0

    .line 451
    :cond_2
    const-string/jumbo v1, "actionBarDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v3

    .line 456
    goto :goto_2
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 462
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/Theme;->createProfileResources(Landroid/content/Context;)V

    .line 464
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/ProfileActivity;->hasOwnBackground:Z

    .line 465
    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$4;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 674
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 676
    new-instance v2, Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    .line 677
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setProfile(Z)V

    .line 680
    new-instance v2, Lorg/telegram/ui/ProfileActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$5;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    .line 692
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    check-cast v13, Landroid/widget/FrameLayout;

    .line 694
    .local v13, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Lorg/telegram/ui/ProfileActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$6;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 706
    new-instance v2, Lorg/telegram/ui/ProfileActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$7;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_3

    :cond_0
    const/4 v2, 0x5

    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$8;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$9;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1232
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->banFromGroup:I

    if-eqz v2, :cond_4

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChannelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-nez v2, :cond_1

    .line 1234
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;-><init>()V

    .line 1235
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->banFromGroup:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1236
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1237
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ProfileActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$10;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1251
    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;
    :cond_1
    new-instance v14, Lorg/telegram/ui/ProfileActivity$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/ProfileActivity$11;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    .line 1260
    .local v14, "frameLayout1":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1262
    const/4 v2, -0x1

    const/16 v3, 0x33

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    new-instance v2, Lorg/telegram/ui/ProfileActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProfileActivity$12;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v14, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1277
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1278
    .local v18, "textView":Landroid/widget/TextView;
    const-string/jumbo v2, "windowBackgroundWhiteRedText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1279
    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1280
    const/16 v2, 0x11

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1281
    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1282
    const-string/jumbo v2, "BanFromTheGroup"

    const v3, 0x7f0700cf

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42b00000    # 88.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setBottomGlowOffset(I)V

    .line 1291
    .end local v14    # "frameLayout1":Landroid/widget/FrameLayout;
    .end local v18    # "textView":Landroid/widget/TextView;
    :goto_1
    new-instance v2, Lorg/telegram/ui/ProfileActivity$TopView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$TopView;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_5

    :cond_2
    const/4 v2, 0x5

    :goto_2
    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ProfileActivity$TopView;->setBackgroundColor(I)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1297
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 1298
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarAvatarRadius:I

    :goto_3
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setPivotX(F)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setPivotY(F)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v19, v0

    const/16 v2, 0x2a

    const/high16 v3, 0x42280000    # 42.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42800000    # 64.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$13;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1321
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_4
    const/4 v2, 0x2

    if-ge v9, v2, :cond_12

    .line 1322
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-nez v2, :cond_7

    if-nez v9, :cond_7

    .line 1321
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 714
    .end local v9    # "a":I
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto/16 :goto_0

    .line 1288
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42b00000    # 88.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1292
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto/16 :goto_2

    .line 1298
    :cond_6
    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_3

    .line 1325
    .restart local v9    # "a":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 1326
    const/4 v2, 0x1

    if-ne v9, v2, :cond_9

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v2, v9

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_8

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameColor:I

    :goto_6
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1331
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameSize:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setPivotX(F)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setPivotY(F)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v2, v9

    if-nez v9, :cond_b

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v19, v2, v9

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42ec0000    # 118.0f

    const/4 v6, 0x0

    if-nez v9, :cond_c

    const/high16 v7, 0x42400000    # 48.0f

    :goto_9
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v2, v9

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_d

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusColor:I

    :goto_a
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusSize:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v2, v9

    if-nez v9, :cond_10

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v19, v2, v9

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42ec0000    # 118.0f

    const/4 v6, 0x0

    if-nez v9, :cond_11

    const/high16 v7, 0x42400000    # 48.0f

    :goto_c
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 1327
    :cond_8
    const-string/jumbo v2, "profile_title"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_6

    .line 1329
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v2, v9

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_a

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameColor:I

    :goto_d
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_7

    :cond_a
    const-string/jumbo v2, "actionBarDefaultTitle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_d

    .line 1337
    :cond_b
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_8

    .line 1338
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1341
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_f

    :cond_e
    const/4 v2, 0x5

    :goto_e
    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileTextColorForId(I)I

    move-result v2

    goto/16 :goto_a

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_e

    .line 1344
    :cond_10
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_b

    .line 1345
    :cond_11
    const/high16 v7, 0x41000000    # 8.0f

    goto :goto_c

    .line 1348
    :cond_12
    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_19

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusColor:I

    :goto_f
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusSize:I

    const/16 v4, 0xe

    if-ge v2, v4, :cond_1c

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusSize:I

    :goto_10
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->adminTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42ec0000    # 118.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42400000    # 48.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-ltz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1356
    :cond_13
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    .line 1357
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_1d

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    :goto_11
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_1e

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    :goto_12
    invoke-static {v4, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1358
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_14

    .line 1359
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1360
    .local v17, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1361
    new-instance v11, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v11, v0, v12, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1362
    .local v11, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 1363
    move-object v12, v11

    .line 1365
    .end local v11    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v17    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_1f

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    :goto_13
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1368
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v2, :cond_20

    .line 1369
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v3, 0x7f0200a2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1380
    :cond_15
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_24

    const/16 v2, 0x38

    :goto_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_25

    const/high16 v3, 0x42600000    # 56.0f

    :goto_16
    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1381
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_16

    .line 1382
    new-instance v10, Landroid/animation/StateListAnimator;

    invoke-direct {v10}, Landroid/animation/StateListAnimator;-><init>()V

    .line 1383
    .local v10, "animator":Landroid/animation/StateListAnimator;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1384
    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$14;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1394
    .end local v10    # "animator":Landroid/animation/StateListAnimator;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$15;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$16;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 1471
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_18

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateListBG()V

    .line 1472
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 1349
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1b

    :cond_1a
    const/4 v2, 0x5

    :goto_17
    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileTextColorForId(I)I

    move-result v2

    goto/16 :goto_f

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_17

    .line 1350
    :cond_1c
    const/16 v2, 0xe

    goto/16 :goto_10

    .line 1357
    :cond_1d
    const-string/jumbo v2, "profile_actionBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_11

    :cond_1e
    const-string/jumbo v3, "profile_actionPressedBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_12

    .line 1367
    .restart local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1f
    const-string/jumbo v2, "profile_actionIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_13

    .line 1371
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v2, :cond_15

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v15

    .line 1373
    .local v15, "isChannel":Z
    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canEditInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    if-nez v15, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v2, :cond_23

    .line 1374
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v3, 0x7f0200a2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_14

    .line 1377
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v3, 0x7f0200a1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_14

    .line 1380
    .end local v15    # "isChannel":Z
    :cond_24
    const/16 v2, 0x3c

    goto/16 :goto_15

    :cond_25
    const/high16 v3, 0x42700000    # 60.0f

    goto/16 :goto_16
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 29
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1940
    sget v24, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 1941
    const/16 v24, 0x0

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1942
    .local v17, "mask":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 1943
    and-int/lit8 v24, v17, 0x2

    if-nez v24, :cond_0

    and-int/lit8 v24, v17, 0x1

    if-nez v24, :cond_0

    and-int/lit8 v24, v17, 0x4

    if-eqz v24, :cond_1

    .line 1944
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateProfileData()V

    .line 1946
    :cond_1
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1949
    .local v14, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v14, :cond_2

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 2215
    .end local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v17    # "mask":I
    :cond_2
    :goto_0
    return-void

    .line 1954
    .restart local v17    # "mask":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 1955
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x4000

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1956
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v18

    .line 1957
    .local v18, "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v18, :cond_4

    .line 1958
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1959
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 1960
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1966
    .end local v18    # "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x2000

    move/from16 v24, v0

    if-nez v24, :cond_5

    and-int/lit8 v24, v17, 0x8

    if-nez v24, :cond_5

    and-int/lit8 v24, v17, 0x10

    if-nez v24, :cond_5

    and-int/lit8 v24, v17, 0x20

    if-nez v24, :cond_5

    and-int/lit8 v24, v17, 0x4

    if-eqz v24, :cond_6

    .line 1967
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 1968
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateProfileData()V

    .line 1970
    :cond_6
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x2000

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 1971
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1976
    :cond_7
    and-int/lit8 v24, v17, 0x2

    if-nez v24, :cond_8

    and-int/lit8 v24, v17, 0x1

    if-nez v24, :cond_8

    and-int/lit8 v24, v17, 0x4

    if-eqz v24, :cond_2

    .line 1977
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v11

    .line 1979
    .local v11, "count":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    if-ge v4, v11, :cond_2

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1981
    .local v10, "child":Landroid/view/View;
    instance-of v0, v10, Lorg/telegram/ui/Cells/UserCell;

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 1982
    check-cast v10, Lorg/telegram/ui/Cells/UserCell;

    .end local v10    # "child":Landroid/view/View;
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 1979
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1988
    .end local v4    # "a":I
    .end local v11    # "count":I
    .end local v17    # "mask":I
    :cond_a
    sget v24, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 1989
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    goto/16 :goto_0

    .line 1990
    :cond_b
    sget v24, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    .line 1991
    const/16 v24, 0x3

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1993
    .local v21, "type":I
    if-nez v21, :cond_11

    .line 1994
    const/16 v24, 0x0

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 1995
    .local v22, "uid":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    .line 1996
    .local v12, "did":J
    const-wide/16 v24, 0x0

    cmp-long v24, v12, v24

    if-nez v24, :cond_c

    .line 1997
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 1998
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v12, v0

    .line 2003
    :cond_c
    :goto_2
    cmp-long v24, v22, v12

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v24, v0

    cmp-long v24, v22, v24

    if-nez v24, :cond_2

    .line 2004
    :cond_d
    cmp-long v24, v22, v12

    if-nez v24, :cond_f

    .line 2005
    const/16 v24, 0x1

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I

    .line 2009
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v11

    .line 2011
    .restart local v11    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_4
    if-ge v4, v11, :cond_2

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2013
    .restart local v10    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 2014
    .restart local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v14}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_0

    .line 1999
    .end local v4    # "a":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .end local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 2000
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v12, v0

    goto/16 :goto_2

    .line 2007
    :cond_f
    const/16 v24, 0x1

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I

    goto :goto_3

    .line 2011
    .restart local v4    # "a":I
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "count":I
    .restart local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2021
    .end local v4    # "a":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .end local v12    # "did":J
    .end local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v22    # "uid":J
    :cond_11
    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 2022
    const/16 v24, 0x0

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 2023
    .restart local v22    # "uid":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    .line 2024
    .restart local v12    # "did":J
    const-wide/16 v24, 0x0

    cmp-long v24, v12, v24

    if-nez v24, :cond_12

    .line 2025
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 2026
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v12, v0

    .line 2031
    :cond_12
    :goto_5
    cmp-long v24, v22, v12

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v24, v0

    cmp-long v24, v22, v24

    if-nez v24, :cond_2

    .line 2032
    :cond_13
    cmp-long v24, v22, v12

    if-nez v24, :cond_15

    .line 2033
    const/16 v24, 0x1

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalFilesCount:I

    .line 2038
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v11

    .line 2040
    .restart local v11    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_7
    if-ge v4, v11, :cond_2

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2042
    .restart local v10    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 2043
    .restart local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v14}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedFilesRow:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedFilesRow:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_0

    .line 2027
    .end local v4    # "a":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .end local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 2028
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v12, v0

    goto/16 :goto_5

    .line 2035
    :cond_15
    const/16 v24, 0x1

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalFilesCountMerge:I

    goto :goto_6

    .line 2040
    .restart local v4    # "a":I
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "count":I
    .restart local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2050
    .end local v4    # "a":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .end local v12    # "did":J
    .end local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v22    # "uid":J
    :cond_17
    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    .line 2051
    const/16 v24, 0x0

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 2052
    .restart local v22    # "uid":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    .line 2053
    .restart local v12    # "did":J
    const-wide/16 v24, 0x0

    cmp-long v24, v12, v24

    if-nez v24, :cond_18

    .line 2054
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_1a

    .line 2055
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v12, v0

    .line 2060
    :cond_18
    :goto_8
    cmp-long v24, v22, v12

    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v24, v0

    cmp-long v24, v22, v24

    if-nez v24, :cond_2

    .line 2061
    :cond_19
    cmp-long v24, v22, v12

    if-nez v24, :cond_1b

    .line 2062
    const/16 v24, 0x1

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalMusicCount:I

    .line 2067
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v11

    .line 2069
    .restart local v11    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_a
    if-ge v4, v11, :cond_2

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2071
    .restart local v10    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 2072
    .restart local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v14}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMusicRow:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMusicRow:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_0

    .line 2056
    .end local v4    # "a":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .end local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_18

    .line 2057
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v12, v0

    goto/16 :goto_8

    .line 2064
    :cond_1b
    const/16 v24, 0x1

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalMusicCountMerge:I

    goto :goto_9

    .line 2069
    .restart local v4    # "a":I
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "count":I
    .restart local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 2079
    .end local v4    # "a":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .end local v12    # "did":J
    .end local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v22    # "uid":J
    :cond_1d
    const/16 v24, 0x3

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2080
    const/16 v24, 0x0

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 2081
    .restart local v22    # "uid":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    .line 2082
    .restart local v12    # "did":J
    const-wide/16 v24, 0x0

    cmp-long v24, v12, v24

    if-nez v24, :cond_1e

    .line 2083
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_20

    .line 2084
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v12, v0

    .line 2089
    :cond_1e
    :goto_b
    cmp-long v24, v22, v12

    if-eqz v24, :cond_1f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v24, v0

    cmp-long v24, v22, v24

    if-nez v24, :cond_2

    .line 2090
    :cond_1f
    cmp-long v24, v22, v12

    if-nez v24, :cond_21

    .line 2091
    const/16 v24, 0x1

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalLinksCount:I

    .line 2096
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v11

    .line 2098
    .restart local v11    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_d
    if-ge v4, v11, :cond_2

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2100
    .restart local v10    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 2101
    .restart local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v14}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedLinksRow:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_22

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedLinksRow:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_0

    .line 2085
    .end local v4    # "a":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .end local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_1e

    .line 2086
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v12, v0

    goto/16 :goto_b

    .line 2093
    :cond_21
    const/16 v24, 0x1

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalLinksCountMerge:I

    goto :goto_c

    .line 2098
    .restart local v4    # "a":I
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "count":I
    .restart local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2109
    .end local v4    # "a":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .end local v12    # "did":J
    .end local v14    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v21    # "type":I
    .end local v22    # "uid":J
    :cond_23
    sget v24, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 2110
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->creatingChat:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2111
    new-instance v24, Lorg/telegram/ui/ProfileActivity$26;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity$26;-><init>(Lorg/telegram/ui/ProfileActivity;[Ljava/lang/Object;)V

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2123
    :cond_24
    sget v24, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_25

    .line 2124
    const/16 v24, 0x0

    aget-object v8, p2, v24

    check-cast v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2125
    .local v8, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 2126
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2127
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2132
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_25
    sget v24, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_26

    .line 2133
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    move/from16 v20, v0

    .line 2134
    .local v20, "oldValue":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    .line 2135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    move/from16 v24, v0

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 2136
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    goto/16 :goto_0

    .line 2138
    .end local v20    # "oldValue":Z
    :cond_26
    sget v24, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_30

    .line 2139
    const/16 v24, 0x0

    aget-object v9, p2, v24

    check-cast v9, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2140
    .local v9, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 2141
    const/16 v24, 0x2

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2142
    .local v7, "byChannelUsers":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    move/from16 v24, v0

    if-eqz v24, :cond_27

    .line 2143
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v24, v0

    if-nez v24, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v24, v0

    if-eqz v24, :cond_27

    .line 2144
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 2147
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v24, v0

    if-nez v24, :cond_2f

    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    move/from16 v24, v0

    if-eqz v24, :cond_2f

    const/16 v16, 0x1

    .line 2148
    .local v16, "loadChannelParticipants":Z
    :goto_e
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2149
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    move/from16 v24, v0

    if-eqz v24, :cond_2b

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    .line 2152
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->hideMedia:Z

    move/from16 v24, v0

    if-nez v24, :cond_28

    .line 2153
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v24 .. v28}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 2154
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->hideFiles:Z

    move/from16 v24, v0

    if-nez v24, :cond_29

    .line 2155
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v24 .. v28}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 2156
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->hideMusic:Z

    move/from16 v24, v0

    if-nez v24, :cond_2a

    .line 2157
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v24, v0

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v24 .. v28}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 2158
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->hideLinks:Z

    move/from16 v24, v0

    if-nez v24, :cond_2b

    .line 2159
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v24, v0

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v24 .. v28}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 2161
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->fetchUsersFromChannelInfo()V

    .line 2162
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 2163
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2c

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 2167
    :cond_2c
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v18

    .line 2168
    .restart local v18    # "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v18, :cond_2d

    .line 2169
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2170
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 2172
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    if-nez v16, :cond_2e

    if-nez v7, :cond_2

    .line 2173
    :cond_2e
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getChannelParticipants(Z)V

    goto/16 :goto_0

    .line 2147
    .end local v16    # "loadChannelParticipants":Z
    .end local v18    # "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2f
    const/16 v16, 0x0

    goto/16 :goto_e

    .line 2176
    .end local v7    # "byChannelUsers":Z
    .end local v9    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_30
    sget v24, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    .line 2177
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->removeSelfFromStack()V

    goto/16 :goto_0

    .line 2178
    :cond_31
    sget v24, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_32

    .line 2179
    const/16 v24, 0x0

    aget-object v15, p2, v24

    check-cast v15, Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 2180
    .local v15, "info":Lorg/telegram/tgnet/TLRPC$BotInfo;
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 2181
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/ProfileActivity;->botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 2182
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2187
    .end local v15    # "info":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_32
    sget v24, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_34

    .line 2188
    const/16 v24, 0x0

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 2189
    .local v22, "uid":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    move/from16 v24, v0

    if-nez v24, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v24, v0

    if-nez v24, :cond_33

    .line 2191
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 2195
    :goto_f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 2196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2193
    :cond_33
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ProfileActivity;->recreateMenuAfterAnimation:Z

    goto :goto_f

    .line 2200
    .end local v22    # "uid":I
    :cond_34
    sget v24, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2201
    const/16 v24, 0x0

    aget-object v24, p2, v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2202
    .restart local v12    # "did":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    move-wide/from16 v24, v0

    cmp-long v24, v12, v24

    if-nez v24, :cond_2

    .line 2203
    const/16 v24, 0x1

    aget-object v6, p2, v24

    check-cast v6, Ljava/util/ArrayList;

    .line 2204
    .local v6, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v4, v0, :cond_2

    .line 2205
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MessageObject;

    .line 2206
    .local v19, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v24, v0

    if-eqz v24, :cond_35

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v24, v0

    if-eqz v24, :cond_35

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    move/from16 v24, v0

    if-eqz v24, :cond_35

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    move/from16 v24, v0

    if-eqz v24, :cond_35

    .line 2207
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    .line 2208
    .local v5, "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_35

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 2204
    .end local v5    # "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_10
.end method

.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .locals 10
    .param p1, "fragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "dialog_id"    # J
    .param p4, "param"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3183
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    .line 3184
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3185
    .local v7, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "scrollToTopOnResume"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3186
    long-to-int v8, p2

    .line 3187
    .local v8, "lower_part":I
    if-eqz v8, :cond_3

    .line 3188
    if-lez v8, :cond_2

    .line 3189
    const-string/jumbo v0, "user_id"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3196
    :cond_0
    :goto_0
    invoke-static {v7, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3207
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v8    # "lower_part":I
    :cond_1
    :goto_1
    return-void

    .line 3190
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v8    # "lower_part":I
    :cond_2
    if-gez v8, :cond_0

    .line 3191
    const-string/jumbo v0, "chat_id"

    neg-int v2, v8

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3194
    :cond_3
    const-string/jumbo v0, "enc_id"

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v2, v2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3200
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 3201
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3202
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v5}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 3203
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->removeSelfFromStack()V

    .line 3204
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 3205
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    move-wide v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method public getAnimationProgress()F
    .locals 1

    .prologue
    .line 2255
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->animationProgress:F

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2467
    if-nez p2, :cond_1

    .line 2504
    :cond_0
    :goto_0
    return-object v2

    .line 2471
    :cond_1
    const/4 v3, 0x0

    .line 2472
    .local v3, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v6, :cond_4

    .line 2473
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 2474
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_2

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_2

    .line 2475
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2485
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v6, v7, :cond_0

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v6, v7, :cond_0

    .line 2486
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 2487
    .local v1, "coords":[I
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 2488
    new-instance v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 2489
    .local v2, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    aget v6, v1, v5

    iput v6, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 2490
    const/4 v6, 0x1

    aget v6, v1, v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_5

    :goto_2
    sub-int v5, v6, v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 2491
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 2492
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2493
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v5, :cond_6

    .line 2494
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    .line 2498
    :cond_3
    :goto_3
    iget-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 2499
    const/4 v5, -0x1

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    .line 2500
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    .line 2501
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    goto/16 :goto_0

    .line 2477
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_4
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v6, :cond_2

    .line 2478
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2479
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_2

    .line 2480
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_1

    .line 2490
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v1    # "coords":[I
    .restart local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_5
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    .line 2495
    :cond_6
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v5, :cond_3

    .line 2496
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    neg-int v5, v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    goto :goto_3
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 2541
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 3650
    new-instance v9, Lorg/telegram/ui/ProfileActivity$32;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ProfileActivity$32;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    .line 3662
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x5c

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarSelectorBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_title"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_subtitleInProfileBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarSelectorRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_subtitleInProfileRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarIconRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarSelectorOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_subtitleInProfileOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarIconOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarSelectorViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_subtitleInProfileViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarIconViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarSelectorGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_subtitleInProfileGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarIconGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarSelectorCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_subtitleInProfileCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarIconCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarPink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarPink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarPink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarSelectorPink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_subtitleInProfilePink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarIconPink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x30

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x31

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundInProfileRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x32

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundInProfileOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x33

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundInProfileViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x34

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundInProfileGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x35

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundInProfileCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x36

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundInProfileBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x37

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundInProfilePink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x38

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_actionIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x39

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_actionBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x3a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_actionPressedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x3b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

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

    const/16 v11, 0x3c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGreenText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x3d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteRedText5"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x3e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x3f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x40

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailCell;

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

    const/16 v11, 0x41

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueImageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x42

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x43

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "adminImage"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "profile_creatorIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x44

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "adminImage"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "profile_adminIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x45

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

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

    const/16 v11, 0x46

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x47

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusOnlineColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x48

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x49

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x4a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x4b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x4c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x4d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x4e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x4f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x50

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v11, 0x51

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AboutLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x52

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AboutLinkCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->profile_aboutTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x53

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AboutLinkCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->profile_aboutTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x54

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AboutLinkCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteLinkSelection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x55

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x56

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x57

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x58

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x59

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x5a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_verifiedCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_verifiedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 2509
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAbout(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 1604
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1605
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    const-string/jumbo v3, "https://telegram.me/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1609
    .local v0, "link":Ljava/lang/String;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/ProfileActivity;->userAbout:Ljava/lang/String;

    .line 1610
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;-><init>()V

    .line 1611
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    .line 1613
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ProfileActivity$20;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ProfileActivity$20;-><init>(Lorg/telegram/ui/ProfileActivity;I)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->linkSearchRequestId:I

    .line 1645
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->linkSearchRequestId:I

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0
.end method

.method public isChat()Z
    .locals 1

    .prologue
    .line 2676
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoChecked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2523
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1687
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 1690
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1933
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1934
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->fixLayout()V

    .line 1935
    return-void
.end method

.method protected onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 12
    .param p1, "isOpen"    # Z
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 2341
    iget-boolean v7, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v7, :cond_13

    iget-boolean v7, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    if-eqz v7, :cond_13

    .line 2342
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2343
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v8, 0xb4

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2344
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2345
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    .line 2346
    .local v4, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v7

    if-nez v7, :cond_0

    .line 2347
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v7, :cond_0

    .line 2348
    const/16 v7, 0xa

    const v8, 0x7f0200c3

    invoke-virtual {v4, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2351
    :cond_0
    if-eqz p1, :cond_b

    .line 2352
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2353
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v7, -0x3e580000    # -21.0f

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2354
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2356
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/high16 v8, 0x42fc0000    # 126.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x41a80000    # 21.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 2357
    .local v5, "width":I
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const v8, 0x3f8f5c29    # 1.12f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getSideDrawablesSize()I

    move-result v8

    int-to-float v8, v8

    add-float v6, v7, v8

    .line 2358
    .local v6, "width2":F
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2359
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v7, v5

    cmpg-float v7, v7, v6

    if-gez v7, :cond_2

    .line 2360
    int-to-float v7, v5

    const v8, 0x3f8f5c29    # 1.12f

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2364
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2366
    const/high16 v7, 0x42b00000    # 88.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/ProfileActivity;->initialAnimationExtraHeight:I

    .line 2367
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2368
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ProfileActivity;->setAnimationProgress(F)V

    .line 2369
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2370
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string/jumbo v7, "animationProgress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2371
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 2372
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v8, 0x3e4ccccd    # 0.2f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2373
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v8, 0x3e4ccccd    # 0.2f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2374
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2375
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2376
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v7, 0x2

    if-ge v0, v7, :cond_7

    .line 2380
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    if-nez v0, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 2381
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    if-nez v0, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 2382
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string/jumbo v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_5

    const/4 v7, 0x0

    :goto_4
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2383
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string/jumbo v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_6

    const/4 v7, 0x0

    :goto_5
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2362
    .end local v0    # "a":I
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_2
    const/4 v7, -0x2

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_0

    .line 2380
    .restart local v0    # "a":I
    .restart local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 2381
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 2382
    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_4

    .line 2383
    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_5

    .line 2385
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_8

    .line 2386
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 2387
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2389
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_9

    .line 2390
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 2391
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2393
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_a

    .line 2394
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 2395
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2397
    :cond_a
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2425
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "width":I
    .end local v6    # "width2":F
    :goto_6
    new-instance v7, Lorg/telegram/ui/ProfileActivity$27;

    invoke-direct {v7, p0, p2}, Lorg/telegram/ui/ProfileActivity$27;-><init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2437
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2439
    new-instance v7, Lorg/telegram/ui/ProfileActivity$28;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/ProfileActivity$28;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/animation/AnimatorSet;)V

    const-wide/16 v8, 0x32

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2447
    .end local v0    # "a":I
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v4    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :goto_7
    return-object v1

    .line 2399
    .restart local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v4    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_b
    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    iput v7, p0, Lorg/telegram/ui/ProfileActivity;->initialAnimationExtraHeight:I

    .line 2400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2401
    .restart local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string/jumbo v7, "animationProgress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2402
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_c

    .line 2403
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const v11, 0x3e4ccccd    # 0.2f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2404
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const v11, 0x3e4ccccd    # 0.2f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2405
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2407
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_8
    const/4 v7, 0x2

    if-ge v0, v7, :cond_f

    .line 2408
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string/jumbo v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_d

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_9
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2409
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string/jumbo v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_e

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_a
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2407
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2408
    :cond_d
    const/4 v7, 0x0

    goto :goto_9

    .line 2409
    :cond_e
    const/4 v7, 0x0

    goto :goto_a

    .line 2411
    :cond_f
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_10

    .line 2412
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 2413
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2415
    :cond_10
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_11

    .line 2416
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 2417
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2419
    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_12

    .line 2420
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 2421
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2423
    :cond_12
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto/16 :goto_6

    .line 2447
    .end local v0    # "a":I
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v4    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 2370
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2401
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 3176
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 3177
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3179
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 275
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v7, "user_id"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    .line 276
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v7, "chat_id"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    .line 277
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v7, "ban_chat_id"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/ProfileActivity;->banFromGroup:I

    .line 278
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v6, :cond_a

    .line 279
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v7, "dialog_id"

    invoke-virtual {v6, v7, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    .line 280
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_0

    .line 281
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    const/16 v7, 0x20

    shr-long/2addr v8, v7

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 283
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 284
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v3, :cond_2

    .line 413
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    :goto_0
    return v4

    .line 287
    .restart local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 288
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 289
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 290
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 291
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 292
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 293
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 294
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v6, :cond_3

    .line 295
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 297
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    .line 298
    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_4

    .line 299
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/query/BotQuery;->loadBotInfo(IZI)V

    .line 301
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-virtual {v6, v7, v8, v5}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 302
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    .line 359
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    :goto_1
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "plusconfig"

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 360
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "hideSharedMedia"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideMedia:Z

    .line 361
    const-string/jumbo v6, "hideSharedFiles"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideFiles:Z

    .line 362
    const-string/jumbo v6, "hideSharedMusic"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideMusic:Z

    .line 363
    const-string/jumbo v6, "hideSharedLinks"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideLinks:Z

    .line 365
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_e

    .line 367
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideMedia:Z

    if-nez v6, :cond_6

    .line 368
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v4, v8, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 369
    :cond_6
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->hideFiles:Z

    if-nez v4, :cond_7

    .line 370
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v5, v4, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 371
    :cond_7
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->hideMusic:Z

    if-nez v4, :cond_8

    .line 372
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v11, v4, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 373
    :cond_8
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->hideLinks:Z

    if-nez v4, :cond_9

    .line 374
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v10, v4, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 408
    :cond_9
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    invoke-virtual {v4, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 409
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v4, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 410
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v4, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 411
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    move v4, v5

    .line 413
    goto/16 :goto_0

    .line 303
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_a
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v6, :cond_1

    .line 304
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 305
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v6, :cond_b

    .line 306
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 307
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ProfileActivity$1;

    invoke-direct {v7, p0, v2}, Lorg/telegram/ui/ProfileActivity$1;-><init>(Lorg/telegram/ui/ProfileActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 315
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_1

    .line 320
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v6, v7, v5}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 326
    .end local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_d

    .line 327
    invoke-direct {p0, v5}, Lorg/telegram/ui/ProfileActivity;->getChannelParticipants(Z)V

    .line 331
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 333
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    .line 334
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 336
    new-instance v6, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 337
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    new-instance v7, Lorg/telegram/ui/ProfileActivity$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ProfileActivity$2;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    iput-object v7, v6, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 345
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v6, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 347
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 348
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-virtual {v6, v7, v8, v5}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 351
    :cond_c
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v6, :cond_5

    .line 352
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getOnlyId()I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/ProfileActivity;->onlyId:I

    .line 353
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getOnlyIdMedia()I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/ProfileActivity;->onlyIdMedia:I

    goto/16 :goto_1

    .line 316
    .restart local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_d
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    goto :goto_4

    .line 375
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_e
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v6, :cond_12

    .line 377
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideMedia:Z

    if-nez v6, :cond_f

    .line 378
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    int-to-long v6, v6

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v4, v8, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 379
    :cond_f
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->hideFiles:Z

    if-nez v4, :cond_10

    .line 380
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    int-to-long v6, v4

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v5, v4, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 381
    :cond_10
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->hideMusic:Z

    if-nez v4, :cond_11

    .line 382
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    int-to-long v6, v4

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v11, v4, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 383
    :cond_11
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->hideLinks:Z

    if-nez v4, :cond_9

    .line 384
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    int-to-long v6, v4

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v10, v4, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    goto/16 :goto_2

    .line 385
    :cond_12
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v6, :cond_9

    .line 387
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideMedia:Z

    if-nez v6, :cond_13

    .line 388
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    neg-int v6, v6

    int-to-long v6, v6

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v4, v8, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 389
    :cond_13
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideFiles:Z

    if-nez v6, :cond_14

    .line 390
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    neg-int v6, v6

    int-to-long v6, v6

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v5, v8, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 391
    :cond_14
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideMusic:Z

    if-nez v6, :cond_15

    .line 392
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    neg-int v6, v6

    int-to-long v6, v6

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v11, v8, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 393
    :cond_15
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideLinks:Z

    if-nez v6, :cond_16

    .line 394
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    neg-int v6, v6

    int-to-long v6, v6

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v10, v8, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 395
    :cond_16
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_9

    .line 397
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->hideMedia:Z

    if-nez v6, :cond_17

    .line 398
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    iget v8, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v4, v8, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 399
    :cond_17
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->hideFiles:Z

    if-nez v4, :cond_18

    .line 400
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v5, v4, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 401
    :cond_18
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->hideMusic:Z

    if-nez v4, :cond_19

    .line 402
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v11, v4, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 403
    :cond_19
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->hideLinks:Z

    if-nez v4, :cond_9

    .line 404
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v10, v4, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    goto/16 :goto_2
.end method

.method public onFragmentDestroy()V
    .locals 3

    .prologue
    .line 418
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 420
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 422
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 423
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 424
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 425
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v0, :cond_1

    .line 426
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 427
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 428
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 429
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 430
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 431
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 432
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->cancelLoadFullUser(I)V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    .line 434
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    goto :goto_0
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 3211
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 3212
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 3213
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v0, :cond_1

    .line 3222
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    :goto_0
    return-void

    .line 3216
    .restart local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    array-length v1, p3

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget v1, p3, v1

    if-nez v1, :cond_2

    .line 3217
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V

    goto :goto_0

    .line 3219
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 2219
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2220
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 2221
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 2223
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateProfileData()V

    .line 2224
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->fixLayout()V

    .line 2225
    return-void
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .locals 2
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2245
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    if-eqz v0, :cond_0

    .line 2246
    iput-boolean v1, p0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    .line 2247
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->recreateMenuAfterAnimation:Z

    if-eqz v0, :cond_0

    .line 2248
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 2251
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 2252
    return-void
.end method

.method protected onTransitionAnimationStart(ZZ)V
    .locals 5
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2236
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    if-eqz v0, :cond_0

    .line 2237
    iput-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    .line 2239
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    aput v3, v1, v2

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    aput v2, v1, v4

    const/4 v2, 0x2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAllowedNotificationsDutingAnimation([I)V

    .line 2240
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 2241
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1677
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_0

    .line 1678
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 1683
    :cond_0
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1668
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1670
    const-string/jumbo v0, "path"

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    :cond_0
    return-void
.end method

.method public scaleToFill()Z
    .locals 1

    .prologue
    .line 2462
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 2537
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 22
    .param p1, "progress"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 2260
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->animationProgress:F

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v17, v0

    const/high16 v18, 0x42400000    # 48.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42400000    # 48.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p1

    sub-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationX(F)V

    .line 2264
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    :cond_0
    const/16 v17, 0x5

    :goto_0
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v7

    .line 2266
    .local v7, "color":I
    const-string/jumbo v17, "actionBarDefault"

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    .line 2267
    .local v4, "actionBarColor":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 2268
    .local v13, "r":I
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 2269
    .local v9, "g":I
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 2272
    .local v5, "b":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    sub-int v17, v17, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v14, v0

    .line 2273
    .local v14, "rD":I
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    sub-int v17, v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v10, v0

    .line 2274
    .local v10, "gD":I
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2276
    .local v6, "bD":I
    sget-boolean v17, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    move-object/from16 v17, v0

    add-int v18, v13, v14

    add-int v19, v9, v10

    add-int v20, v5, v6

    invoke-static/range {v18 .. v20}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/ProfileActivity$TopView;->setBackgroundColor(I)V

    .line 2278
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    :cond_2
    const/16 v17, 0x5

    :goto_1
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AvatarDrawable;->getIconColorForId(I)I

    move-result v7

    .line 2279
    const-string/jumbo v17, "actionBarDefaultIcon"

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    .line 2280
    .local v12, "iconColor":I
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 2281
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 2282
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 2284
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    sub-int v17, v17, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v14, v0

    .line 2285
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    sub-int v17, v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v10, v0

    .line 2286
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2287
    sget-boolean v17, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v17, v0

    add-int v18, v13, v14

    add-int v19, v9, v10

    add-int v20, v5, v6

    invoke-static/range {v18 .. v20}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2289
    :cond_3
    const-string/jumbo v17, "profile_title"

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    .line 2290
    const-string/jumbo v17, "actionBarDefaultTitle"

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v16

    .line 2291
    .local v16, "titleColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 2292
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 2293
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 2294
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 2296
    .local v2, "a":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    sub-int v17, v17, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v14, v0

    .line 2297
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    sub-int v17, v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v10, v0

    .line 2298
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2299
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    sub-int v17, v17, v2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v3, v0

    .line 2300
    .local v3, "aD":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    .line 2301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    if-nez v17, :cond_7

    .line 2300
    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2264
    .end local v2    # "a":I
    .end local v3    # "aD":I
    .end local v4    # "actionBarColor":I
    .end local v5    # "b":I
    .end local v6    # "bD":I
    .end local v7    # "color":I
    .end local v9    # "g":I
    .end local v10    # "gD":I
    .end local v11    # "i":I
    .end local v12    # "iconColor":I
    .end local v13    # "r":I
    .end local v14    # "rD":I
    .end local v16    # "titleColor":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    goto/16 :goto_0

    .line 2278
    .restart local v4    # "actionBarColor":I
    .restart local v5    # "b":I
    .restart local v6    # "bD":I
    .restart local v7    # "color":I
    .restart local v9    # "g":I
    .restart local v10    # "gD":I
    .restart local v13    # "r":I
    .restart local v14    # "rD":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    goto/16 :goto_1

    .line 2304
    .restart local v2    # "a":I
    .restart local v3    # "aD":I
    .restart local v11    # "i":I
    .restart local v12    # "iconColor":I
    .restart local v16    # "titleColor":I
    :cond_7
    sget-boolean v17, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    add-int v18, v2, v3

    add-int v19, v13, v14

    add-int v20, v9, v10

    add-int v21, v5, v6

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_3

    .line 2307
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    :cond_9
    const/16 v17, 0x5

    :goto_4
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileTextColorForId(I)I

    move-result v7

    .line 2308
    const-string/jumbo v17, "actionBarDefaultSubtitle"

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v15

    .line 2309
    .local v15, "subtitleColor":I
    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 2310
    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 2311
    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 2312
    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 2314
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    sub-int v17, v17, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v14, v0

    .line 2315
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    sub-int v17, v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v10, v0

    .line 2316
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2317
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    sub-int v17, v17, v2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v3, v0

    .line 2318
    const/4 v11, 0x0

    :goto_5
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v11, v0, :cond_d

    .line 2319
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    if-nez v17, :cond_c

    .line 2318
    :cond_a
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 2307
    .end local v15    # "subtitleColor":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    goto :goto_4

    .line 2322
    .restart local v15    # "subtitleColor":I
    :cond_c
    sget-boolean v17, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    add-int v18, v2, v3

    add-int v19, v13, v14

    add-int v20, v9, v10

    add-int v21, v5, v6

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_6

    .line 2324
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->initialAnimationExtraHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    .line 2325
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    :goto_7
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileColorForId(I)I

    move-result v7

    .line 2326
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    :goto_8
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(I)I

    move-result v8

    .line 2327
    .local v8, "color2":I
    if-eq v7, v8, :cond_f

    .line 2328
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v14, v0

    .line 2329
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v10, v0

    .line 2330
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2331
    sget-boolean v17, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v17, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v18

    add-int v18, v18, v14

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v19

    add-int v19, v19, v10

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    add-int v20, v20, v6

    invoke-static/range {v18 .. v20}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 2332
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 2335
    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    .line 2336
    sget-boolean v17, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v17, :cond_10

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateActionBarBG()V

    .line 2337
    :cond_10
    return-void

    .line 2325
    .end local v8    # "color2":I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    goto/16 :goto_7

    .line 2326
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    goto/16 :goto_8
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 2
    .param p1, "chatInfo"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 2637
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2638
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    .line 2641
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->fetchUsersFromChannelInfo()V

    .line 2642
    return-void
.end method

.method public setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 1584
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 1585
    return-void
.end method

.method public setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 2528
    return-void
.end method

.method public setPlayProfileAnimation(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 2228
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2229
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "view_animations"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2230
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    .line 2232
    :cond_0
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 2453
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2518
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2519
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 2514
    return-void
.end method
