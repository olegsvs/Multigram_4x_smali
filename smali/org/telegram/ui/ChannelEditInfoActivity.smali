.class public Lorg/telegram/ui/ChannelEditInfoActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private adminedChannelCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/AdminedChannelCell;",
            ">;"
        }
    .end annotation
.end field

.field private adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private adminnedChannelsLayout:Landroid/widget/LinearLayout;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private canCreatePublic:Z

.field private chatId:I

.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Landroid/widget/TextView;

.field private container1:Landroid/widget/FrameLayout;

.field private container2:Landroid/widget/FrameLayout;

.field private container3:Landroid/widget/FrameLayout;

.field private container4:Landroid/widget/FrameLayout;

.field private createAfterUpload:Z

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private descriptionTextView:Landroid/widget/EditText;

.field private doneButton:Landroid/view/View;

.field private donePressed:Z

.field private editText:Landroid/widget/EditText;

.field private headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

.field private isPrivate:Z

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z

.field private lineView:Landroid/view/View;

.field private lineView2:Landroid/view/View;

.field private lineView3:Landroid/view/View;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private linearLayout3:Landroid/widget/LinearLayout;

.field private linearLayoutTypeContainer:Landroid/widget/LinearLayout;

.field private linkContainer:Landroid/widget/LinearLayout;

.field private loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

.field private loadingAdminedChannels:Z

.field private loadingInvite:Z

.field private nameTextView:Landroid/widget/EditText;

.field private privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private publicContainer:Landroid/widget/LinearLayout;

.field private radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private signMessages:Z

.field private textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private usernameTextView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->canCreatePublic:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedChannelCells:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 139
    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 140
    const-string/jumbo v0, "chat_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->chatId:I

    .line 141
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->chatId:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelEditInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->createAfterUpload:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->createAfterUpload:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChannelEditInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->signMessages:Z

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->signMessages:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelEditInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->canCreatePublic:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->canCreatePublic:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChannelEditInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditInfoActivity;->updatePrivatePublic()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChannelEditInfoActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelEditInfoActivity;->checkUserName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object p1
.end method

.method static synthetic access$2402(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingAdminedChannels:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChannelEditInfoActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedChannelCells:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/ChannelEditInfoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkReqId:I

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChannelEditInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lastCheckName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelEditInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditInfoActivity;->loadAdminedChannels()V

    return-void
.end method

.method static synthetic access$3002(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingInvite:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Cells/TextBlockCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelEditInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelEditInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelEditInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lastNameAvailable:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lastNameAvailable:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkUserName(Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0703e1

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 936
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 937
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 941
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 942
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 943
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 944
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lastCheckName:Ljava/lang/String;

    .line 945
    iget v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkReqId:I

    if-eqz v4, :cond_0

    .line 946
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkReqId:I

    invoke-virtual {v4, v5, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 949
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lastNameAvailable:Z

    .line 950
    if-eqz p1, :cond_a

    .line 951
    const-string/jumbo v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 952
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalid"

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 954
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1040
    :goto_1
    return v2

    .line 939
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 957
    :cond_3
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 958
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 959
    .local v1, "ch":C
    if-nez v0, :cond_5

    if-lt v1, v6, :cond_5

    if-gt v1, v7, :cond_5

    .line 960
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_4

    .line 961
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidStartNumberMega"

    const v5, 0x7f0703e6

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 963
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 965
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidStartNumber"

    const v5, 0x7f0703e5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 967
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 971
    :cond_5
    if-lt v1, v6, :cond_6

    if-le v1, v7, :cond_9

    :cond_6
    const/16 v4, 0x61

    if-lt v1, v4, :cond_7

    const/16 v4, 0x7a

    if-le v1, v4, :cond_9

    :cond_7
    const/16 v4, 0x41

    if-lt v1, v4, :cond_8

    const/16 v4, 0x5a

    if-le v1, v4, :cond_9

    :cond_8
    const/16 v4, 0x5f

    if-eq v1, v4, :cond_9

    .line 972
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalid"

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 974
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 957
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 979
    .end local v0    # "a":I
    .end local v1    # "ch":C
    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_d

    .line 980
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_c

    .line 981
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidShortMega"

    const v5, 0x7f0703e4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 983
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 985
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidShort"

    const v5, 0x7f0703e3

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 987
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 991
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_e

    .line 992
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidLong"

    const v5, 0x7f0703e2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 994
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 998
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkChecking"

    const v5, 0x7f0703dd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteGrayText8"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1000
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteGrayText8"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1001
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lastCheckName:Ljava/lang/String;

    .line 1002
    new-instance v2, Lorg/telegram/ui/ChannelEditInfoActivity$16;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChannelEditInfoActivity$16;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 1039
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    move v2, v3

    .line 1040
    goto/16 :goto_1
.end method

.method private generateLink()V
    .locals 3

    .prologue
    .line 1044
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingInvite:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    if-eqz v1, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingInvite:Z

    .line 1048
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;-><init>()V

    .line 1049
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;
    iget v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->chatId:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1050
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelEditInfoActivity$17;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$17;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private loadAdminedChannels()V
    .locals 3

    .prologue
    .line 808
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingAdminedChannels:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingAdminedChannels:Z

    .line 812
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditInfoActivity;->updatePrivatePublic()V

    .line 813
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    .line 814
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelEditInfoActivity$15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$15;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private updatePrivatePublic()V
    .locals 8

    .prologue
    const v7, 0x7f070135

    const v6, 0x7f0200ad

    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->canCreatePublic:Z

    if-nez v0, :cond_3

    .line 890
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "ChangePublicLimitReached"

    const v5, 0x7f070118

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 896
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingAdminedChannels:Z

    if-eqz v0, :cond_2

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/LoadingCell;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "windowBackgroundGrayShadow"

    invoke-static {v1, v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 931
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 902
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ShadowSectionCell;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200ac

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 908
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "windowBackgroundWhiteGrayText4"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 909
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_2
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_8

    .line 917
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "MegaPrivateLinkHelp"

    const v5, 0x7f07040f

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "ChannelInviteLinkTitle"

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 923
    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 924
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-eqz v0, :cond_c

    move v0, v2

    :goto_7
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/TextBlockCell;->setVisibility(I)V

    .line 925
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-eqz v0, :cond_d

    move v0, v2

    :goto_8
    invoke-virtual {v4, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 926
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_9
    invoke-virtual {v4, v0, v2}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 909
    :cond_5
    const-string/jumbo v0, "windowBackgroundWhiteGrayText4"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 917
    :cond_6
    const-string/jumbo v0, "MegaUsernameHelp"

    const v5, 0x7f070412

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 918
    :cond_7
    const-string/jumbo v0, "ChannelLinkTitle"

    const v5, 0x7f07013d

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 920
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "ChannelPrivateLinkHelp"

    const v5, 0x7f07015f

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 921
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "ChannelInviteLinkTitle"

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 920
    :cond_9
    const-string/jumbo v0, "ChannelUsernameHelp"

    const v5, 0x7f070172

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 921
    :cond_a
    const-string/jumbo v0, "ChannelLinkTitle"

    const v5, 0x7f07013d

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_b
    move v0, v2

    .line 923
    goto/16 :goto_6

    :cond_c
    move v0, v1

    .line 924
    goto/16 :goto_7

    .line 925
    :cond_d
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto/16 :goto_8

    .line 926
    :cond_e
    const-string/jumbo v0, "Loading"

    const v5, 0x7f0703eb

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$3;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v9

    .line 307
    .local v9, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f0200de

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->doneButton:Landroid/view/View;

    .line 309
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->fragmentView:Landroid/view/View;

    .line 310
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->fragmentView:Landroid/view/View;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 311
    iget-object v10, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->fragmentView:Landroid/view/View;

    check-cast v10, Landroid/widget/ScrollView;

    .line 312
    .local v10, "scrollView":Landroid/widget/ScrollView;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 313
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "ChannelEdit"

    const v2, 0x7f070133

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 320
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 322
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 326
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawPhoto(Z)V

    .line 332
    iget-object v11, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x40

    const/high16 v1, 0x42800000    # 64.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    :goto_2
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    :goto_3
    const/high16 v4, 0x41400000    # 12.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_9

    const/high16 v5, 0x41800000    # 16.0f

    :goto_4
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$4;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_a

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "GroupName"

    const v2, 0x7f07033a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 373
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 374
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    :goto_6
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 376
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_c

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 383
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/text/InputFilter;

    .line 384
    .local v8, "inputFilters":[Landroid/text/InputFilter;
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v8, v0

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 387
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_d

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 388
    iget-object v11, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_e

    const/high16 v3, 0x41800000    # 16.0f

    :goto_9
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_f

    const/high16 v5, 0x42c00000    # 96.0f

    :goto_a
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$5;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 407
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView:Landroid/view/View;

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView:Landroid/view/View;

    const-string/jumbo v1, "divider"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout3:Landroid/widget/LinearLayout;

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout3:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 413
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout3:Landroid/widget/LinearLayout;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_10

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout3:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 418
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_11

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 419
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_12

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x5

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    const v1, 0x2c001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 427
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/text/InputFilter;

    .line 428
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v8, v0

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "DescriptionOptionalPlaceholder"

    const v2, 0x7f070219

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 432
    iget-object v6, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout3:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$6;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$7;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 460
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setSize(I)V

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container1:Landroid/widget/FrameLayout;

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container1:Landroid/widget/FrameLayout;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_14

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container1:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v0, :cond_2

    .line 469
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 471
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_15

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_10
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    new-instance v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_17

    .line 477
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v0, "MegaPublic"

    const v2, 0x7f070410

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "MegaPublicInfo"

    const v3, 0x7f070411

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 481
    :goto_12
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$8;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    new-instance v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_19

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v1, "MegaPrivate"

    const v2, 0x7f07040d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MegaPrivateInfo"

    const v3, 0x7f07040e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 500
    :goto_13
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$9;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 517
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1a

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 523
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->publicContainer:Landroid/widget/LinearLayout;

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 525
    iget-object v6, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v4, 0x41880000    # 17.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 530
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1b

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_15
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 531
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1c

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_16
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    const v1, 0x28000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    const/4 v2, -0x2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 544
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-nez v0, :cond_1

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1d

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_17
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 548
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1e

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_18
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    const v1, 0x28020

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "ChannelUsernamePlaceholder"

    const v2, 0x7f070173

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    const/4 v2, -0x1

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$10;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 576
    new-instance v0, Lorg/telegram/ui/Cells/TextBlockCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextBlockCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextBlockCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 579
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$11;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextBlockCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 598
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x5

    :goto_19
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v11, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_20

    const/4 v2, 0x5

    :goto_1a
    const/16 v3, 0x11

    const/4 v4, 0x3

    const/16 v5, 0x11

    const/4 v6, 0x7

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200ad

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    .line 610
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_21

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setSize(I)V

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditInfoActivity;->updatePrivatePublic()V

    .line 621
    :cond_2
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView2:Landroid/view/View;

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView2:Landroid/view/View;

    const-string/jumbo v1, "divider"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView2:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container2:Landroid/widget/FrameLayout;

    .line 626
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container2:Landroid/widget/FrameLayout;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_22

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 628
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container3:Landroid/widget/FrameLayout;

    .line 629
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container3:Landroid/widget/FrameLayout;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_23

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_1d
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container3:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView3:Landroid/view/View;

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView3:Landroid/view/View;

    const-string/jumbo v1, "divider"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView3:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container2:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_3

    .line 639
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string/jumbo v1, "ChannelSignMessages"

    const v2, 0x7f070167

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->signMessages:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$12;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200ac

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v1, "ChannelSignMessagesInfo"

    const v2, 0x7f070168

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_27

    .line 658
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container3:Landroid/widget/FrameLayout;

    .line 659
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container3:Landroid/widget/FrameLayout;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_24

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_1e
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container3:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v1, "windowBackgroundWhiteRedText5"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_25

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v1, "DeleteMega"

    const v2, 0x7f070210

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 670
    :goto_1f
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container3:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$13;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200ad

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_26

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v1, "MegaDeleteInfo"

    const v2, 0x7f07040b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :goto_20
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    :goto_21
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_4

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 722
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_29

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 729
    :goto_22
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 310
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "inputFilters":[Landroid/text/InputFilter;
    .end local v10    # "scrollView":Landroid/widget/ScrollView;
    :cond_5
    const-string/jumbo v0, "windowBackgroundGray"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 322
    .restart local v10    # "scrollView":Landroid/widget/ScrollView;
    :cond_6
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 332
    .restart local v7    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_7
    const/4 v2, 0x3

    goto/16 :goto_2

    :cond_8
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_3

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 371
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "EnterChannelName"

    const v2, 0x7f070276

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 374
    :cond_b
    const/4 v0, 0x3

    goto/16 :goto_6

    .line 376
    :cond_c
    const-string/jumbo v0, "windowBackgroundWhiteHintText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_7

    .line 387
    .restart local v8    # "inputFilters":[Landroid/text/InputFilter;
    :cond_d
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_8

    .line 388
    :cond_e
    const/high16 v3, 0x42c00000    # 96.0f

    goto/16 :goto_9

    :cond_f
    const/high16 v5, 0x41800000    # 16.0f

    goto/16 :goto_a

    .line 413
    :cond_10
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_b

    .line 418
    :cond_11
    const-string/jumbo v0, "windowBackgroundWhiteHintText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_c

    .line 419
    :cond_12
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_d

    .line 422
    :cond_13
    const/4 v0, 0x3

    goto/16 :goto_e

    .line 465
    :cond_14
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_f

    .line 471
    :cond_15
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_10

    .line 477
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 479
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v0, "ChannelPublic"

    const v2, 0x7f070160

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "ChannelPublicInfo"

    const v3, 0x7f070162

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_12

    :cond_18
    const/4 v0, 0x0

    goto :goto_23

    .line 498
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v1, "ChannelPrivate"

    const v2, 0x7f07015d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ChannelPrivateInfo"

    const v3, 0x7f07015e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_13

    .line 517
    :cond_1a
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_14

    .line 530
    :cond_1b
    const-string/jumbo v0, "windowBackgroundWhiteHintText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_15

    .line 531
    :cond_1c
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_16

    .line 547
    :cond_1d
    const-string/jumbo v0, "windowBackgroundWhiteHintText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_17

    .line 548
    :cond_1e
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_18

    .line 598
    :cond_1f
    const/4 v0, 0x3

    goto/16 :goto_19

    .line 600
    :cond_20
    const/4 v2, 0x3

    goto/16 :goto_1a

    .line 610
    :cond_21
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1b

    .line 626
    :cond_22
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1c

    .line 629
    :cond_23
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1d

    .line 659
    :cond_24
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1e

    .line 668
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v1, "ChannelDelete"

    const v2, 0x7f07012f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1f

    .line 704
    :cond_26
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v1, "ChannelDeleteInfo"

    const v2, 0x7f070131

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_20

    .line 708
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_28

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const v1, 0x7f0200ad

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    :goto_24
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView3:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView2:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_21

    .line 711
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200ad

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    .line 726
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_22
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 734
    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v1, :cond_1

    .line 735
    const/4 v1, 0x0

    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 736
    .local v0, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->chatId:I

    if-ne v1, v2, :cond_1

    .line 737
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v1, :cond_0

    .line 738
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 740
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 741
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iput-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 742
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditInfoActivity;->updatePrivatePublic()V

    .line 745
    .end local v0    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_1
    return-void
.end method

.method public didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1
    .param p1, "file"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p2, "small"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p3, "big"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 749
    new-instance v0, Lorg/telegram/ui/ChannelEditInfoActivity$14;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChannelEditInfoActivity$14;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 769
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 13

    .prologue
    .line 1071
    new-instance v9, Lorg/telegram/ui/ChannelEditInfoActivity$18;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$18;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    .line 1080
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    new-instance v10, Lorg/telegram/ui/ChannelEditInfoActivity$19;

    invoke-direct {v10, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$19;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    .line 1094
    .local v10, "\u0441ellDelegate2":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x4c

    new-array v11, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayout3:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container1:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container2:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container3:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->container4:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

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

    const-string/jumbo v7, "avatar_text"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView2:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->lineView3:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

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

    aput-object v0, v11, v8

    const/16 v8, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

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

    aput-object v0, v11, v8

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v12, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

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

    aput-object v0, v11, v12

    const/16 v12, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

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

    aput-object v0, v11, v8

    const/16 v12, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

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

    aput-object v0, v11, v12

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v12, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

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

    aput-object v0, v11, v12

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

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

    aput-object v0, v11, v8

    const/16 v12, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

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

    aput-object v0, v11, v12

    const/16 v8, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->usernameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->linkContainer:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v12, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v8, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteRedText4"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGrayText8"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGreenText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x2e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

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

    aput-object v0, v11, v8

    const/16 v12, 0x2f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

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

    aput-object v0, v11, v12

    const/16 v12, 0x30

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

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

    const-string/jumbo v8, "windowBackgroundWhiteRedText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v8, 0x31

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

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

    aput-object v0, v11, v8

    const/16 v8, 0x32

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x33

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v12, 0x34

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextBlockCell;

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

    aput-object v0, v11, v12

    const/16 v12, 0x35

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

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

    aput-object v0, v11, v12

    const/16 v8, 0x36

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v12, 0x37

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x38

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x39

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

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

    aput-object v0, v11, v12

    const/16 v12, 0x3a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v8, 0x3b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v12, 0x3c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

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

    aput-object v0, v11, v12

    const/16 v12, 0x3f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x40

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

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

    aput-object v0, v11, v12

    const/16 v12, 0x41

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x42

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x43

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "deleteButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v8, 0x44

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

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

    const-string/jumbo v7, "avatar_text"

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x45

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundRed"

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x46

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundOrange"

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x47

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundViolet"

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x48

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundGreen"

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x49

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundCyan"

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x4a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundBlue"

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    const/16 v8, 0x4b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundPink"

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v11, v8

    return-object v11
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 773
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 774
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->chatId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 147
    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v5, :cond_1

    .line 148
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 149
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ChannelEditInfoActivity$1;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/ChannelEditInfoActivity$1;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 157
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_0

    .line 162
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 166
    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v5, :cond_1

    .line 167
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->chatId:I

    invoke-virtual {v5, v6, v2, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V

    .line 169
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v5, :cond_1

    .line 202
    .end local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_0
    :goto_2
    return v3

    .line 158
    .restart local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 171
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    .line 179
    iget-boolean v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->isPrivate:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v3, :cond_4

    .line 180
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;-><init>()V

    .line 181
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;
    const-string/jumbo v3, "1"

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    .line 182
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 183
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelEditInfoActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$2;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 198
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v3, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 199
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v3, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 200
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->signMessages:Z

    .line 201
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v3, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 202
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v3

    goto :goto_2
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    .line 211
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditInfoActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 213
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 218
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditInfoActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 219
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 791
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 794
    :cond_0
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 778
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 779
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 782
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    const-string/jumbo v1, "nameTextView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 1
    .param p1, "chatFull"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 797
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 798
    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditInfoActivity;->generateLink()V

    goto :goto_0
.end method
